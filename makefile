###############################################################################
# Variables
###############################################################################
TEXES := $(wildcard *.tex) # All .tex files
PDFS := $(TEXES:%.tex=out/%.pdf) # All output .pdf files

###############################################################################
# Recipes
###############################################################################
.PHONY: all

all: $(PDFS)

out/%.pdf: trash/%.pdf
	mkdir -p out
	cp trash/$*.pdf out/$*.pdf

trash/%.pdf: %.tex
	mkdir -p trash
	latexmk $^ -pdf -outdir=trash
