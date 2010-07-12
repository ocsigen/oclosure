SRC=$(wildcard *.ml)
EXECS=$(SRC:.ml=.byte)
TARGETS=$(SRC:.ml=.js)
LIB=
OCAMLFLAGS=-package js_of_ocaml -syntax camlp4o
GOOG=../goog
all: $(TARGETS)

%.byte: %.ml $(GOOG)/goog.cmo
	@echo "[CC]" $@
	ocamlfind ocamlc $(LIB) -I $(GOOG) goog.cmo tools.cmo $(OCAMLFLAGS) -linkpkg -o $@ $<

%.js: %.byte
	js_of_ocaml $^ -pretty

ocamldep:
	ocamlfind ocamldep -I $(GOOG) -I $(GOOG)/ui $(OCAMLFLAGS) $(SRC) 

clean:
	@echo "[CLEAN]"
	-rm -f *.cmo *.cmi $(TARGETS)

var: 
	@echo $(TARGETS)
	@echo $(EXECS)
