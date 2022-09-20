###############################################################################
# Variables
###############################################################################
TEXES := $(wildcard src/*.tex) # All .tex files
PDFS := $(TEXES:src/%.tex=out/%.pdf) # All output .pdf files

###############################################################################
# Recipes
###############################################################################
.PHONY: all clean

all: $(PDFS)

out/%.pdf: trash/%.pdf
	mkdir -p out
	cp trash/$*.pdf out/$*.pdf

trash/%.pdf: src/%.tex
	mkdir -p trash
	latexmk $^ -pdf -outdir=trash

clean:
	rm -rf out/* trash/*