# You can get js_of_ocaml with the command 
# darcs get http://ocsigen.org/darcs/js_of_ocaml
# (you need to install darcs first: http://darcs.net/)

#You need ocaamldsort, you can download it at
#ftp://quatramaran.ens.fr/pub/ara/ocamldsort/ocamldsort-0.14.3.tar.gz

JS_OF_OCAML?=$(shell ocamlfind query js_of_ocaml)
LIB=$(JS_OF_OCAML_PATH)/lib

INC_DIR=$(sort $(dir $(wildcard */ */*/)))
INCLUDES=$(addprefix -I	,$(INC_DIR))
OCAMLFLAGS=$(INCLUDES) -package js_of_ocaml -syntax camlp4o
OCAMLIFLAGS=$(INCLUDES) -package js_of_ocaml -pp "cpp -traditional-cpp"
GOOG=goog.cmo
OCLOSURE=oclosure.cma
MLS=$(shell find * -name "*.ml")
MLIS=$(shell find * -name "*.mli")
OCAMLFIND=ocamlfind
OCAMLDOC=ocamldoc

all: $(OCLOSURE)

-include .depend .ocamldsort

$(OCLOSURE):$(CMOS) $(GOOG)
	$(OCAMLFIND) ocamlc -a -o $@ $^

#$(GOOG): $(CMOS)
#	$(OCAMLFIND) ocamlc -pack -o $@ $(CMOS)

.SECONDEXPANSION:

%.cmo: %.ml
	@echo "[CC] $@"
	$(OCAMLFIND) ocamlc $(OCAMLFLAGS) -c $<

%.cmi: %.mli
	$(OCAMLFIND) ocamlc $(OCAMLIFLAGS) -c $<

depend: ocamldsort

ocamldep:
	($(OCAMLFIND) ocamldep $(OCAMLFLAGS) $(MLS); \
	$(OCAMLFIND) ocamldep $(OCAMLIFLAGS) $(MLIS)) > .depend

ocamldsort: ocamldep
	echo CMOS=`< .depend ocamldsort -byte $(MLS) $(MLIS)` > .ocamldsort

var:
	@echo $(FILES)

doc:
	mkdir -p ../doc
	$(OCAMLFIND) $(OCAMLDOC) -stars -html -d ../doc $(OCAMLIFLAGS) goog.mli

ocsi_doc:
	mkdir -p ../docdiv
	ocamlopt -shared -I /usr/lib/ocaml/ocamldoc -o ./odoc_ocsigen.cmxs ../tools/odoc_ocsigen.ml
	$(OCAMLFIND) $(OCAMLDOC) -stars -g ./odoc_ocsigen.cmxs -d ../docdiv \
		-t "OClosure - API Reference" $(OCAMLIFLAGS) goog.mli


cleanall: clean
	-rm -f .depend .ocamldsort

clean:
	@echo "[CLEAN]"
	-rm -f $(OCLOSURE)
	-find . -name "*.cm[oix]" -exec rm {} \;
