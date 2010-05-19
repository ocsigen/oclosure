%{
  open Ast
%}

%token<string> ID
%token CONSTRUCTOR PROTECTED PRIVATE RETURN TYPE PARAM EXTENDS ENUM
%token  RBRA LBRA LT GT COMMA LPAR RPAR EM QM EQ COLON PIPE DOT
%token REQUIRE PROVIDE ARRAY FUNCT STAR
%token EOF 
%start<Ast.content>
  content
%%
content:
    | lh=list(head) lf=list(field) EOF { (lh,lf) }
    | error { failwith "content error"}

head:
    | REQUIRE LPAR id=utype RPAR {Require(id)}
    | PROVIDE LPAR id=utype RPAR {Provide(id)}
    | error { failwith "header error"}
field:
    | li=list(info) id=utype {(li,id)}
    | error { failwith "field error"}
info:
    | PARAM LBRA id=gtype RBRA { Param(id)}
    | TYPE  LBRA id=gtype RBRA { Type(id) }
    | RETURN LBRA id=gtype RBRA { Return(id) }
    | ENUM LBRA id=stype RBRA { Enum(id) }
    | CONSTRUCTOR { Constructor }
    | EXTENDS LBRA id=separated_list(COMMA,utype) RBRA { Extends(id) }
    | PRIVATE { Private }
    | PROTECTED { Protected }
    | error {failwith "info error"}

gtype:
    | x=separated_nonempty_list(PIPE,stype) {x}
stype:
    | x1=list(opt) t=utype x2=list(opt) { (t,x1@x2) }
opt:
    | QM | EM | EQ { Opt}
utype:
    | ARRAY DOT LT id=gtype GT { Array(id) }
    | STAR { Star }
    | FUNCT LPAR t1=separated_list(COMMA,gtype) RPAR COLON t2=gtype { Fun(t1@[t2]) }
    | x=separated_nonempty_list(DOT,ID) {Other(x)}
    | error { failwith "utype error"}
