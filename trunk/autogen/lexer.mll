{
open Parser
open Lexing
}

let id = ['a'-'z' 'A'-'Z'] ['A'-'Z' 'a'-'z' '0'-'9' '_']*
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
  | "require" {REQUIRE}
  | "provide" {PROVIDE}
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
  | "Array" {ARRAY}
  | "function" {FUNCT}
  | id { let s = Lexing.lexeme lexbuf in ID s}
  | eof { EOF }
  | _                                     { failwith (lexeme lexbuf)  }
