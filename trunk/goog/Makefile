#DIRECTORY TO VISIT
DIRS= asserts disposable dom events positioning ui

all:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE});\
	done;

clean:
	@for D in $(DIRS);do\
	(cd $$D; ${MAKE} clean);\
	done;
