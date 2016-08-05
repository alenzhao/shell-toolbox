# GNU Makefile for generating documentation in different formats for
# mdoc sources.  Uses OpenBSD's mandoc utility for document generation.

MANDOC_FLAGS="-Ios=Unix"

DOCS= sway.mdoc tsh.mdoc

all: $(DOCS:%.mdoc=%.txt) $(DOCS:%.mdoc=%.html) $(DOCS:%.mdoc=%.pdf)

%.txt: %.mdoc
	mandoc $(MANDOC_FLAGS) -T locale $< >$@

%.html: %.mdoc
	mandoc $(MANDOC_FLAGS) -T html $< >$@

%.pdf: %.mdoc
	mandoc $(MANDOC_FLAGS) -T pdf $< >$@
