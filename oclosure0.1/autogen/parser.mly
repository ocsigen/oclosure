%{
  open Ast
%}

%token<string> ID
%token CONSTRUCTOR PROTECTED PRIVATE RETURN TYPE PARAM EXTENDS ENUM
%token  RBRA LBRA LT GT COMMA LPAR RPAR EM QM EQ COLON PIPE DOT DDD LCRO RCRO
%token REQUIRE PROVIDE ARRAY FUNCT STAR COMMENT
%token EOF 
%start<Ast.content>
  content
%%
content:
    | lh=list(head) lf=list(field) EOF { (lh,lf) }

head:
    | REQUIRE LBRA id=utype RBRA {Require(id)}
    | PROVIDE LBRA id=utype RBRA {Provide(id)}
    | error { failwith "header error"}
field:
    | li=list(info) id=utype {(li,id)}
    | error { failwith "field error"}
info:
    | COMMENT {Comment([""])}
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
    | x=separated_nonempty_list(se,stype) {x}
    | LPAR x=separated_nonempty_list(se,stype) RPAR option(opt){x}
se:
      |COMMA 
      |PIPE {}
stype:
    | x1=list(opt) t=utype x2=list(opt) { (t,x1@x2) }
opt:
    | QM | EM | EQ { Opt}
utype:
    | ARRAY DOT LT id=gtype GT { Array(id) }
    | utype DOT LT gtype COMMA id=gtype GT { Array(id)}
    | ARRAY { Array([(Star,[])])}
    | LCRO id=gtype RCRO {Array(id)}
    | STAR { Star }
    | LBRA id=ID COLON x=gtype RBRA {Obj(id,x)}
    | FUNCT LPAR t1=separated_list(COMMA,gtype) RPAR { Fun(t1@[[(Star,[])]])}
    | FUNCT LPAR t1=separated_list(COMMA,gtype) RPAR COLON t2=gtype { Fun(t1@[t2]) }
    | x=separated_nonempty_list(DOT,ID) {Other(x)}
    | error { failwith "utype error"}

