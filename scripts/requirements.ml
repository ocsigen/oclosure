let req = Str.regexp "\\[oclosure\\]\\([^[]*\\)\\[/oclosure\\]"

let rec search l p o = 
  let p = Str.search_forward req l p
  in Printf.fprintf o "goog.require(\"%s\");\n" (Str.matched_group 1 l);
  search l (p+1) o

let search_requirements i o =
  begin try
    while true do 
      let l = input_line i in
      try search l 0 o with Not_found -> ()
    done
  with End_of_file -> ()
  end


let file = Sys.argv.(1)

let i = open_in file
let o = open_out (Filename.chop_suffix file ".js"^"_req.js")
let _ = search_requirements i o

let _ = close_out o
