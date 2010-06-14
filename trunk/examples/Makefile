
LIB=$(JS_FROM_OCAML_PATH)/lib
SRC=*.ml
PP=-pp "camlp4o $(LIB)/pa_js.cmo"
GOOG=../goog
all: zippy.js

zippy: test_zippy.ml
	ocamlc -I $(LIB) -I $(GOOG) $(PP) ocaml2js.cma goog.cmo events.cmo ui.cmo -o $@ test_zippy.ml

zippy.js: zippy
	$(JS_FROM_OCAML_PATH)/ocaml2js $(JS_FROM_OCAML_PATH)/runtime/runtime.js zippy -pretty

clean:
	rm *.cmo *.cmi *.js zippy
	rm .depend

depend:$(SRC)
	@ocamldep -I $(LIB) -I $(GOOG) $(PP) $^ > .depend
-include .depend