#DIRECTORY TO VISIT
DIRS=syntax ui

all:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;