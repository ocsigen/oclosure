#DIRECTORY TO VISIT
DIRS=syntax goog

all: depend
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;
	make -C test vm.js

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;

depend:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} depend);\
	done;
