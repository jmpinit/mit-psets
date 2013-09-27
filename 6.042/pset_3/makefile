MARKDOWN	:= $(wildcard *.md)
PDF			:= $(MARKDOWN:.md=.pdf)
BUILDDIR	:= submission

all: $(foreach P,$(PDF),$(BUILDDIR)/$(P))

$(BUILDDIR)/%.pdf: %.md
	markdown2pdf $< -o $@

.PHONY: all
