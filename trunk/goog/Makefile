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
GOOG=goog.cmo
FILES=$(shell find * -name "*.ml" && find * -name "*.mli")

all: $(GOOG)

-include .depend .ocamldsort

$(GOOG): $(CMOS)
	ocamlc -pack -o $@ $(CMOS)

.SECONDEXPANSION:

%.cmo: %.ml
	@echo "[CC] $@"
	ocamlfind ocamlc $(OCAMLFLAGS) -c $<

%.cmi: %.mli
	ocamlfind ocamlc $(OCAMLFLAGS) -c $<

depend:
	ocamlfind ocamldep $(OCAMLFLAGS) $(FILES) > .depend

ocamldsort: depend
	echo CMOS=`< .depend ocamldsort -byte $(FILES)` >.ocamldsort

var:
	@echo $(FILES)

doc:
	ocamlfind ocamldoc -d ../doc $(OCAMLFLAGS) $(FILES)

cleanall: clean
	-rm .depend

clean:
	@echo "[CLEAN]"
	-find . -name "*.cm[oix]" -exec rm {} \;


