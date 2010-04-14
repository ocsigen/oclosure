#DIRECTORY TO VISIT
DIRS=syntax ui

all:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;
	make -C test vm.js

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;