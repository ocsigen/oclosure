open Ast
open String
let format = Printf.sprintf



let rec last = function
  | [] -> []
  | x::[] -> [x]
  | x::xs -> last xs

let rec get info = function
    | "param" -> List.filter
	(function Param _ -> true | _ -> false) info
    | "type" -> List.filter
	(function Type _ -> true | _ -> false) info
    | "return" -> List.filter
	(function Return _ -> true | _ -> false) info
    | "enum" -> List.filter
	(function Enum _ -> true | _ -> false) info
    | "const" -> List.filter
	(function Constructor -> true | _ -> false) info
    | "extends" -> List.filter
	(function Extends _ -> true | _ -> false) info
    | "private" -> List.filter
	(function Private -> true | _ -> false) info
    | "protected" -> List.filter
	(function Protected -> true | _ -> false) info
    | _ -> []
and contains info s = match get info s with
    [] -> false
  | _ -> true
    
let rec parse (hd,fields) =
  let rec get_class fields acc =
    match fields with
      | [] -> parse_class (List.rev acc)
      | (x,n)::xs ->
	  if contains x "const" (* contructeur *)
	  then
	    (parse_class (List.rev acc))^(get_class xs [x,n])
	  else
	    (get_class xs ((x,n)::acc))
  in (print_headers hd)^(get_class fields [])

and print_headers hd =
  let rec split hd pro req = match hd with
    | [] -> pro,req
    | Provide(x)::xs -> split xs (x::pro) req
    | Require(x)::xs -> split xs pro (x::req)
  in let  pro,req = split hd [] []
  in
  let rec print_pro = function
    | [] -> ""
    | x::[] -> print_utype ~full:1 x
    | x::xs -> (print_utype ~full:1 x)^", "^(print_pro xs)
  and print_req = function
    | [] -> ""
    | x::xs -> "open "^(print_module x)^"\n"^(print_req xs)
  in
    format "%s\n%s" (format
		"
(** 
    * OClosure Project - 2010
    * Class %s
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)"       
		       (print_pro pro)) (print_req req)
    
and print_module x = (print_name x)^"  (* "^(print_utype ~full:1 x)^" *)"
  

and parse_class = function
  | [] -> ""
  | (inf,name)::meth ->
      format "\nclass external %s %s: %s <\n%s> = \"%s\"\n"
	(print_utype name)
	(print_extends (get inf "extends"))
	(print_params (get inf "param"))
	(print_fields meth)
	(print_utype ~full:1 name)

and unit = [Other ["unit"],[]]
    
and print_extends l =
  match l with 
    | Extends(x::_)::xs -> "\ninherit "^(print_utype x)^(print_extends xs)
    | _ -> ""

and print_params l =
    match l with
      | Param(x)::xs -> (print_gtype x)^" -> "^(print_params xs)
      | _ -> ""

and print_fields f =
    match f with
	[] -> ""
      | x::xs -> (print_field x)^(print_fields xs)
and print_field (info,name) =
    if contains info "type"
    then "" (* attribut *)
    else if contains info "enum"
    then "" (* attribut aussi *)
    else if contains info "private"
    then "" (* pas besoin ? *)
    else
      let type1 = get info "param" in
      let type2 = match get info "return" with
	| [] -> type1@[Param unit]
	| Return x::_ -> type1@[Param x]
	| _ -> []
      in
	format "%s : %s;\n"
	  (print_utype name)
	  (print_gtypes type2)	    

and print_gtypes l =
  match l with
      [] -> ""
    | (Param x)::[] -> print_gtype x
    | (Param x)::xs -> (print_gtype x)^" -> "^(print_gtypes xs)
    | _ -> ""

and print_gtypes_2 l =
  match l with
      [] -> ""
    | x::[] -> print_gtype x
    | x::xs -> (print_gtype x)^" -> "^(print_gtypes_2 xs)

and count =ref 0
  
and print_name ?(full=0) = function
    Array x -> format "(* Array[%s] *)" (print_gtype x) 
  | Star -> "(* any = \"*\" *)"
  | Fun xs-> "(* function *)"
  | Obj(a,b) -> "(* Object with "^a^":"^(print_gtype b)^")"
  | Other(xx) ->
      if full==0
      then
	let name = List.hd (last xx)
	  (*
	    in let name = Str.global_replace (Str.regexp "\\(.+\\)\\([A-Z]\\)") "\\1_\\2" name
	    in let name = String.lowercase name
	  *)
	in let name = capitalize name
	in let name =
	    if List.mem name ["$";"$$"]
	    then (incr count ;"_"^(string_of_int (!count))^"(* incorect name : "^name^" *)")
	    else name
	in
	  if List.mem name ["assert";"and";"or";"begin";"end";"open";"not";"nor";"xor"]
	  then name^"_ (* reserved word *)"
	  else name
      else
	begin
	  let rec p = function
	    | [] -> ""
	    | x::[] -> x
	    | x::xs -> x^"."^(p xs)
	  in p xx
	end 

and print_utype ?(full=0) = function
    Array x -> format "%s array" (print_gtype x) 
  | Star -> "JSOO.obj (* any = \"*\" *)"
  | Fun(xs)-> "(" ^ (print_gtypes_2 xs) ^ ")"
  | Obj(a,b) -> "JSOO.obj (* Object with "^a^":"^(print_gtype b)^" *)"
  | Other(xx) ->
      if full==0
      then
	let name = List.hd (last xx)
	in let name = uncapitalize name
	in
	  begin match name with
	  | "object" -> "JSOO.obj (*object*)"
	  | "function" -> "JSOO.obj (*object*)"
	  | "boolean" -> "bool"
	  | "type" -> "type_"
	  | x -> x
	  end
      else
	begin
	  let rec p = function
	    | [] -> ""
	    | x::[] -> x
	    | x::xs -> x^"."^(p xs)
	  in p xx
	end 
and print_stype  = function
  | (t,[]) -> print_utype t
  | (t,opt) -> (print_utype t)^"(* opt? *)" 
and print_gtype : gtype -> string = function
  | [] -> ""
  | x::[] -> (print_stype x)
  | x::xs -> (print_stype x)^(format "(* %s *)" (List.fold_left (fun acc x -> acc^"| "^(print_stype x)) "" xs))

let _ =
  try
    let lexbuf = Lexing.from_channel stdin in
    let result = Parser.content Lexer.token lexbuf in
      print_string (parse result)
  with e ->
    raise e
