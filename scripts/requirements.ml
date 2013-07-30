
let verbose = ref false
let compile = ref true

let package_name = "oclosure"

let closure_dir =
  Findlib.init ();
  (* FIXME package name from Makefile ${LIBRARY} *)
  Filename.concat (Findlib.package_directory package_name) "closure"

let third_party_dir =
  Filename.concat (Findlib.package_directory package_name) "third_party"

let roots = [ closure_dir; third_party_dir]

let closure_builder_path =
  Filename.concat
    (Filename.concat
       (Filename.concat
	  closure_dir
	  "bin")
       "build")
    "closurebuilder.py"

let compiler_jar =
  ref (Filename.concat (Findlib.package_directory package_name) "compiler.jar")

let argument = [
  "-verbose", Arg.Set verbose, "Be verbose";
  "-script", Arg.Clear compile, "Do not optimize the generated javascript";
  "-compiler_jar", Arg.Set_string compiler_jar, "Path to the javascript compiler";
]

let usage = Printf.sprintf "%s [options] eliom_appl.js ..." Sys.argv.(0)

let req_re = Str.regexp "\\[oclosure\\]\\([^[]*\\)\\[/oclosure\\]"

let rec search_line line pos =
  try
    let pos = Str.search_forward req_re line pos in
    let req = Str.matched_group 1 line in
    req :: search_line line (pos+1)
  with Not_found -> []

let rec search_channel in_ch =
  try
    let line = input_line in_ch in
    search_line line 0 @ search_channel in_ch
  with End_of_file -> []

let search_requirements file =
  let in_ch = open_in file in
  let reqs = search_channel in_ch in
  close_in in_ch;
  reqs

let eliom_js_file = Sys.argv.(1)


let rec print_roots () = function
  | [] -> ""
  | root :: roots ->
      Printf.sprintf " --root=%s%a" root print_roots roots

let rec print_reqs () = function
  | [] -> ""
  | req :: reqs ->
      Printf.sprintf " --namespace=%s%a" req print_reqs reqs

let file_exists file = try ignore(Unix.stat file); true with _ -> false

let do_command command =
  if !verbose then print_endline ("+ " ^ command);
  let res =  Sys.command command in
  if res <> 0 then exit res

let process_file file =
  if not (Filename.check_suffix file "js") then begin
    prerr_endline usage;
    exit 1
  end;
  let requirements = search_requirements file in
  let output_file = Filename.chop_extension file ^ "_oclosure.js" in
  if requirements = [] then
    close_out (open_out output_file) (* empty file *)
  else if !compile && file_exists !compiler_jar then
    do_command
      (Printf.sprintf
	 "%s%a%a --compiler_jar=%s -o compiled --output_file=%s"
	 closure_builder_path
	 print_roots roots
	 print_reqs requirements
	 !compiler_jar
	 output_file)
  else begin
    do_command
      (Printf.sprintf
	 "%s%a%a -o script --output_file=%s"
	 closure_builder_path
	 print_roots roots
	 print_reqs requirements
	 output_file);
    do_command
      (Printf.sprintf
	 "sed -ie 's/^goog.global.CLOSURE_NO_DEPS;$/goog.global.CLOSURE_NO_DEPS=true;/' %s"
	 output_file)
  end

let _ = Arg.parse argument process_file usage
