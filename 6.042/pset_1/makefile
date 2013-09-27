MARKDOWN	:= $(wildcard *.md)
SRC_PDF		:= $(wildcard *.pdf)
DEST_PDF	:= $(MARKDOWN:.md=.pdf)
BUILDDIR	:= submission

all: $(foreach P,$(SRC_PDF) $(DEST_PDF),$(BUILDDIR)/$(P))

# generate PDFs from markdown sources
$(BUILDDIR)/%.pdf: %.md
	markdown2pdf $< -o $@

# copy PDFs that don't get built
$(foreach P,$(SRC_PDF),$(BUILDDIR)/$(P)):
	cp $(notdir $@) $@

.PHONY: all
