#DIRECTORY TO VISIT
DIRS= asserts disposable dom events math positioning timer ui

all:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;

depend:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} depend);\
	done;
