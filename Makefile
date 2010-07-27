DIRS=goog examples

all: lib examples

lib: 
	@echo "[MAKE] in goog"
	@(${MAKE} -C goog);

examples: lib
	@echo "[MAKE] in examples"
	@(${MAKE} -C examples);

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
