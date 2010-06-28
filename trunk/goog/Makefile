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
PACKS=events.cmopack math.cmopack gdom.cmopack positioning.cmopack spell.cmopack timer.cmopack
ROOTS=ui/ui.cmo
CMOS= \
  ui/abstractSpellChecker.cmo \
  ui/advancedTooltip.cmo \
  ui/animatedZippy.cmo \
  ui/autoComplete.cmo \
  ui/autoCompleteBasic.cmo \
  ui/bubble.cmo \
  ui/button.cmo \
  ui/charcounter.cmo \
  ui/charPicker.cmo \
  ui/checkbox.cmo \
  ui/colorPalette.cmo \
  ui/colorPicker.cmo \
  ui/component.cmo \
  ui/container.cmo \
  ui/control.cmo \
  ui/controlRenderer.cmo \
  ui/datePicker.cmo \
  ui/dialog.cmo \
  ui/imagelessRoundedCorner.cmo \
  ui/labelinput.cmo \
  ui/menu.cmo \
  ui/menuButton.cmo \
  ui/menuItem.cmo \
  ui/palette.cmo \
  ui/paletteRenderer.cmo \
  ui/plainTextSpellChecker.cmo \
  ui/popup.cmo \
  ui/popupBase.cmo \
  ui/progressBar.cmo \
  ui/prompt.cmo \
  ui/ratings.cmo \
  ui/richTextSpellChecker.cmo \
  ui/scrollFloater.cmo \
  ui/slider.cmo \
  ui/sliderBase.cmo \
  ui/subMenu.cmo \
  ui/tabbar.cmo \
  ui/tabBarRenderer.cmo \
  ui/toolbar.cmo \
  ui/toolbarButton.cmo \
  ui/tooltip.cmo \
  ui/tree/baseNode.cmo \
  ui/tree/treeControl.cmo \
  ui/tree/treeNode.cmo \
  ui/tree/tree.cmo \
  ui/twothumbslider.cmo \
  ui/zippy.cmo \
  ui/ui.cmo


all: $(GOOG)

$(GOOG): $(PACKS) $(ROOTS)
	for i in $(PACKS) ; do cp "$$i" `echo $$i | sed s/.cmopack/.cmo/` ; done 
	ocamlc -pack -o $@ $(PACKS:.cmopack=.cmo) $(CMOS)
	-rm $(PACKS:.cmopack=.cmo)

.SECONDEXPANSION:

%.cmopack: $$(shell find % -name "*.ml" -print | sed s/.ml/.cmo/g)
	ocamlc -pack -o $@ $^

date.cmopack : date/date.ml date/dateRange.ml
	ocamlc -pack -o $@ $^

tree.cmopack : ui/tree/baseNode.cmo ui/tree/treeNode.cmo ui/tree/treeControl.cmo
	ocamlc -pack -o $@ $^

events.cmopack : events/event.cmo events/browserEvent.cmo events/eventTarget.cmo events/events.cmo
	ocamlc -pack -o $@ $^

%.cmo: %.ml
	@echo "[CC] $@"
	ocamlfind ocamlc $(OCAMLFLAGS) -c $<

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

