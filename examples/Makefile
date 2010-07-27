SRC=$(wildcard *.ml)
EXECS=$(SRC:.ml=.byte)
TARGETS=$(SRC:.ml=.js)
LIB=
SCRIPTS=../scripts
OCAMLFLAGS=-package js_of_ocaml -syntax camlp4o
GOOG=../goog
all: $(TARGETS)

%.byte: %.ml $(GOOG)/oclosure.cma
	@echo "[CC]" $@
	ocamlfind ocamlc $(LIB) -I $(GOOG) oclosure.cma $(OCAMLFLAGS) -linkpkg -o $@ $<

%.js: %.byte
	js_of_ocaml $^ -pretty
	ocaml str.cma $(SCRIPTS)/requirements.ml $@

ocamldep:
	ocamlfind ocamldep -I $(GOOG) -I $(GOOG)/ui $(OCAMLFLAGS) $(SRC) 

clean:
	@echo "[CLEAN]"
	-rm -f *.cmo *.cmi $(TARGETS) $(EXECS) *_req.js

var: 
	@echo $(TARGETS)
	@echo $(EXECS)
