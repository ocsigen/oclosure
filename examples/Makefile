SRC=$(wildcard *.ml)
EXECS=$(SRC:.ml=.byte)
TARGETS=$(SRC:.ml=.js)
REQS=$(SRC:.ml=_req.js)
LIB=-package js_of_ocaml oclosure.cma
SCRIPTS=../scripts
OCAMLFLAGS=-package js_of_ocaml,js_of_ocaml.syntax -syntax camlp4o -I $(GOOG)
OCAMLLFLAGS=
GOOG=../goog
all: $(TARGETS) $(REQS)

%.byte: %.ml $(GOOG)/oclosure.cma
	@echo "[CC]" $@
	ocamlfind ocamlc -linkpkg -o $@ $(OCAMLFLAGS) $(LIB) $<

%.js: %.byte
	js_of_ocaml $^ -pretty

%_req.js: %_oclosure.js
	cp $^ $@

%_oclosure.js: %.js
	OCAMLPATH=../files:${OCAMLPATH} ../oclosure_req $^

ocamldep:
	ocamlfind ocamldep -I $(GOOG) -I $(GOOG)/ui $(OCAMLFLAGS) $(SRC) 

clean:
	@echo "[CLEAN]"
	-rm -f *.cmo *.cmi $(TARGETS) $(EXECS) *_req.js

var: 
	@echo $(TARGETS)
	@echo $(EXECS)
