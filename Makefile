
include Makefile.config

LIBRARY=oclosure
DIRS=goog examples

all: lib oclosure_req

.PHONY: lib examples doc

lib:
	@echo "[MAKE] in goog"
	@(${MAKE} -C goog);

oclosure_req: scripts/requirements.ml
	@echo "[OCAMLC] oclosure_req"
	@ocamlfind ocamlc -o $@ -package str,findlib,unix -linkpkg $^

examples: lib files/META.oclosure goog/closure goog/third_party
	@echo "[MAKE] in examples"
	@(${MAKE} -C examples);

goog/closure:
	ln -sf ../google-closure/closure $@
	chmod +x $@/bin/build/closurebuilder.py
goog/third_party:
	ln -sf ../google-closure/third_party $@

files/META.oclosure: files/META
	cat $< > $@
	echo directory=\"${PWD}/goog\" >> $@

DESTDIR:=$(shell ocamlfind printconf destdir)

install:
	ocamlfind install $(LIBRARY) goog/goog.cmi goog/oclosure.cma files/META
	cp -r google-closure/closure google-closure/third_party $(DESTDIR)/$(LIBRARY)
	chmod +x $(DESTDIR)/$(LIBRARY)/closure/bin/build/closurebuilder.py
	install -D -m 755 oclosure_req ${BINDIR}/oclosure_req

uninstall:
	-[ ! -d $(DESTDIR)/$(LIBRARY)/closure ] || rm -rf $(DESTDIR)/$(LIBRARY)/closure
	-[ ! -d $(DESTDIR)/$(LIBRARY)/third_party ] || rm -rf $(DESTDIR)/$(LIBRARY)/third_party
	-[ ! -f ${BINDIR}/oclosure_req ] || rm -f ${BINDIR}/oclosure_req
	-ocamlfind remove $(LIBRARY)

reinstall: uninstall install

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
