
all: ast.cmi parser.cmo lexer.cmo generate.cmo 
	ocamlc -I /usr/lib/ocaml/ str.cma parser.cmo lexer.cmo generate.cmo -o generate
parser.ml : parser.mly
	menhir --infer parser.mly
lexer.ml : lexer.mll
	ocamllex lexer.mll
parser.cmo : parser.ml parser.cmi
	ocamlc -c parser.ml
parser.cmi:
	ocamlc -c parser.mli
%.cmo : %.ml
	ocamlc -c $<

%.cmi : %.mli
	ocamlc -c $<

clean:
	rm -Rf *.cmo *.cmi generate lexer.ml parser.ml lexer.mli parser.mli