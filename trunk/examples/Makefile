SRC=$(wildcard *.ml)
EXECS=$(SRC:.ml=.byte)
TARGETS=$(SRC:.ml=.js)
OCAML_FLAGS=-package js_of_ocaml -syntax camlp4o
GOOG=../goog/
all: $(TARGETS)

%.byte: %.ml
	@echo "[CC]" $@
	ocamlfind ocamlc -I $(GOOG) goog.cmo tools.cmo $(OCAML_FLAGS) -linkpkg -o $@ $^

%.js: %.byte
	js_of_ocaml $^ -pretty

clean:
	@echo "[CLEAN]"
	-rm *.cmo *.cmi $(TARGETS)

var: 
	@echo $(TARGETS)
	@echo $(EXECS)
