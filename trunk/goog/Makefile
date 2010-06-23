# You can get js_of_ocaml with the command 
# darcs get http://ocsigen.org/darcs/js_of_ocaml
# (you need to install darcs first: http://darcs.net/)
JS_OF_OCAML?=$(shell ocamlfind query js_of_ocaml)
LIB=$(JS_OF_OCAML_PATH)/lib

FILE=$(wildcard */*.ml */*/*.ml)
INC_DIR=$(sort $(dir $(wildcard */ */*/)))
INCLUDES=$(addprefix -I	,$(INC_DIR))
OCAMLFLAGS=$(INCLUDES) -package js_of_ocaml -syntax camlp4o
GOOG=goog.cmo
PACKS=events.cmopack math.cmopack spell.cmopack date.cmopack ui.cmopack tree.cmopack
#CMOS=$(FILE:.ml=.cmo)

all: $(GOOG)

$(GOOG): $(PACKS)
	for i in $(PACKS) ; do cp "$$i" `echo $$i | sed s/.cmopack/.cmo/` ; done 
	ocamlc -pack -o $@ $(^:.cmopack=.cmo)
#	-rm $(PACKS:.cmopack=.cmo)

.SECONDEXPANSION:

%.cmopack: $$(shell find % -name "*.ml" -print | sed s/.ml/.cmo/g)
	echo $^
	ocamlc -pack -o $@ $^

tree.cmopack : ui/tree/baseNode.cmo ui/tree/treeNode.cmo ui/tree/treeControl.cmo
	ocamlc -pack -o $@ $^

events.cmopack : events/event.cmo events/browserEvent.cmo events/eventTarget.cmo events/events.cmo
	ocamlc -pack -o $@ $^

%.cmo: %.ml
	@echo "[CC] $@"
	@ocamlfind ocamlc $(OCAMLFLAGS) -c $<

depend:$(FILE)
	@ocamlfind ocamldep $(OCAMLFLAGS) $(FILE) > .depend

var:
	@echo $(FILE)

doc:
	ocamlfind ocamldoc -d ../doc $(OCAMLFLAGS) $(FILE)

cleanall: clean
	-rm .depend

clean:
	-find . -name "*.cm[oix]" -exec rm {} \;
	-rm *.cmopack

-include .depend

