SRC=$(wildcard *.ml)
EXECS=$(SRC:.ml=.byte)
TARGETS=$(SRC:.ml=.js)
OCAML_FLAGS=-package js_of_ocaml -syntax camlp4o
GOOG=../goog/
all: $(TARGETS)

%.byte: %.ml
	@echo "[CC]" $@
	ocamlfind ocamlc -I $(GOOG) goog.cmo events.cmo ui.cmo $(OCAML_FLAGS) -linkpkg -o $@ $^

%.js: %.byte
	js_of_ocaml $^ -pretty

clean:
	rm *.cmo *.cmi $(TARGETS) $(EXECS)
	rm .depend

depend:$(SRC)
	@ocamlfind ocamldep -I $(GOOG) $(OCAML_FLAGS) $^ > .depend
-include .depend

var: 
	@echo $(TARGETS)
	@echo $(EXECS)