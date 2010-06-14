OCAML2JS=~/M1/Oclosure/ocaml2js
LIB=$(OCAML2JS)/lib
SRC=*.ml
PP=-pp "camlp4o $(LIB)/pa_js.cmo"
GOOG=~/M1/Oclosure/oclosure2/goog
all: zippy.js

zippy: test_zippy.ml
	ocamlc -I $(LIB) -I $(GOOG) $(PP) ocaml2js.cma goog.cmo events.cmo ui.cmo -o $@ test_zippy.ml

zippy.js: zippy
	$(OCAML2JS)/ocaml2js $(OCAML2JS)/runtime/runtime.js zippy -pretty

clean:
	rm *.cmo *.cmi *.js zippy
	rm .depend

depend:$(SRC)
	@ocamldep -I $(LIB) -I $(GOOG) $(PP) $^ > .depend
-include .depend