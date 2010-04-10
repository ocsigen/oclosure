.PHONY: all clean

#Where to find pa_object_bindings file
PA_PATH=../syntax
PA_ML=$(PA_PATH)/pa_object_bindings.ml
PA_CMO=$(PA_ML:.ml=.cmo)

all: $(PA_CMO)

$(PA_CMO): $(PA_ML)
	@echo "[CC] $@"
	@ocamlc -c -I +camlp4 -I +camlp4/Camlp4Printers -I +camlp4/Camlp4Parsers -pp camlp4of $<

clean:
	@echo [Clean] $(PWD)
	@rm -Rf *.cmo *.cmi