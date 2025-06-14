.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
.SUFFIXES:
.PHONY: all clean install check

PROJECT   =tcl-learntype
VERSION   =1.0.0
PREFIX    =/usr/local
ETCDIR    =/etc

all:
clean:
install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin $(DESTDIR)$(ETCDIR)/learntype/art
	cp bin/learntype $(DESTDIR)$(PREFIX)/bin
	cp etc/learntype/*.txt $(DESTDIR)$(ETCDIR)/learntype
	cp etc/learntype/art/*.txt $(DESTDIR)$(ETCDIR)/learntype/art
check:
## -- BLOCK:license --
install: install-license
install-license: README.md COPYING COPYRIGHT
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md COPYING COPYRIGHT $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/learntype-xterm $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
