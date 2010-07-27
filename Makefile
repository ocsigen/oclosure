DIRS=goog examples

all: depend lib examples

lib:
	@echo "[MAKE] in goog"
	@(cd goog; ${MAKE});

examples: lib
	@echo "[MAKE] in examples"
	@(cd examples; ${MAKE});

doc: 
	@(cd goog; ${MAKE} doc);

clean:
	@for D in $(DIRS);do\
	(echo "-> ./$$D");\
	(cd $$D; ${MAKE} clean);\
	done;

depend:
	@echo "[MAKE] depend in goog"
	@(cd goog; ${MAKE} depend);
