{
open Parser
open Lexing
}

let id = ['a'-'z' 'A'-'Z' '_' '$'] ['A'-'Z' 'a'-'z' '0'-'9' '_' '$']*
rule token = parse
	[' ' '\010' '\013' '\009' '\012'] +
	  { token lexbuf }
  | "@enum" {ENUM}
  | "@private" {PRIVATE}
  | "@protected" {PROTECTED}
  | "@return" {RETURN}
  | "@extends" {EXTENDS}
  | "@constructor" {CONSTRUCTOR}
  | "@type" {TYPE}
  | "@param" { PARAM }
  | "@require" {REQUIRE}
  | "@provide" {PROVIDE}
  | "{" { LBRA }
  | "}" { RBRA }
  | "(" { LPAR }
  | ")" { RPAR }
  | "*" {STAR}
  | "." {DOT}
  | "," {COMMA}
  | ":" {COLON}
  | "|" {PIPE}
  | "=" {EQ}
  | "?" {QM}
  | "!" {EM}
  | "<" {LT}
  | ">" {GT}
  | "[" {LCRO}
  | "]" {RCRO}
  | "Array" {ARRAY}
  | "function" {FUNCT}
  | "..." {DDD}
  | "/**" {comments 0 lexbuf}
  | "/*" {comments 0 lexbuf}
  | id { let s = Lexing.lexeme lexbuf in ID s}
  | eof { EOF }
  | _   { failwith (lexeme lexbuf)  }


and comments level = parse
  | "*/"	{ if level=0
		  then token lexbuf
		  else comments (level-1) lexbuf}
  | "/**"       { comments (level+1) lexbuf}
  | "/*"       { comments (level+1) lexbuf}
  | _		{ comments level lexbuf }
  | eof		{ print_endline ("(** Warring : comments are not closed **)"^(string_of_int level));
  		  EOF
		}
