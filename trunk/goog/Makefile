LIB=~/M1/Oclosure/ocaml2js/lib

FILE=$(wildcard */*.ml */*/*.ml)
INC_DIR=$(sort $(dir $(wildcard */ */*/)))
INCLUDES=$(addprefix -I	,$(INC_DIR))
OCAMLFLAGS=-I $(LIB) $(INCLUDES) -pp "camlp4o $(LIB)/pa_js.cmo"
GOOG=goog.cmo
PACKS=events.cmopack ui.cmopack 
#CMOS=$(FILE:.ml=.cmo)

all: $(GOOG)

$(GOOG): $(PACKS)
	for i in $(PACKS) ; do cp "$$i" `echo $$i | sed s/.cmopack/.cmo/` ; done 
	ocamlc -pack -o $@ $(^:.cmopack=.cmo)
#	-rm $(PACKS:.cmopack=.cmo)

.SECONDEXPANSION:

%.cmopack: $$(shell ls %/*.ml | sed s/.ml/.cmo/g)
	ocamlc -pack -o $@ $^

events.cmopack: events/event.cmo events/eventTarget.cmo events/events.cmo
	ocamlc -pack -o $@ $^

%.cmo: %.ml
	echo "[CC] $@"
	ocamlc $(OCAMLFLAGS) -c $<

depend:$(FILE)
	@ocamldep $(OCAMLFLAGS) $(FILE) > .depend

clean:
	-find . -name "*.cm[oix]" -exec rm {} \;
	-rm *.cmopack
	-rm .depend

-include .depend

