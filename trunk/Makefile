DIRS=goog examples

all: depend
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;

depend:
	@echo "[MAKE] depend in goog"
	@(cd goog; ${MAKE} depend);

