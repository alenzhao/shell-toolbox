# GNU Makefile for generating documentation in different formats for
# mdoc sources.  Uses OpenBSD's mandoc utility for document generation.

DOCS= tsh.mdoc

all: $(DOCS:%.mdoc=%.txt) $(DOCS:%.mdoc=%.html) $(DOCS:%.mdoc=%.pdf)

%.txt: %.mdoc
	mandoc -T locale $< >$@

%.html: %.mdoc
	mandoc -T html $< >$@

%.pdf: %.mdoc
	mandoc -T pdf $< >$@
