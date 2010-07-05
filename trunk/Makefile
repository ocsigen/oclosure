DIRS=goog examples

all:
	@for D in $(DIRS);do\
	(echo "-> ./$$D");\
	(cd $$D; ${MAKE});\
	done;

clean:
	@for D in $(DIRS);do\
	(echo "-> ./$$D");\
	(cd $$D; ${MAKE} clean);\
	done;

depend:
	@echo "[MAKE] depend in goog"
	@(cd goog; ${MAKE} ocamldsort);

