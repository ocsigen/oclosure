LIBRARY=oclosure
DIRS=goog examples

all: lib

.PHONY: lib examples doc

lib:
	@echo "[MAKE] in goog"
	@(${MAKE} -C goog);

examples: lib
	@echo "[MAKE] in examples"
	@(${MAKE} -C examples);

install:
	ocamlfind install $(LIBRARY) goog/goog.cmi scripts/requirements.ml goog/oclosure.cma META

uninstall:
	ocamlfind remove $(LIBRARY)

doc:
	@(${MAKE} -C goog doc);

clean:
	@for D in $(DIRS);do\
	(echo "-> ./$$D");\
	(${MAKE} -C $$D clean);\
	done;

depend:
	@echo "[MAKE] depend in goog"
	@(${MAKE} -C goog depend);
