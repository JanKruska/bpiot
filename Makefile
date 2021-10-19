	
LATEXMK ?= latexmk
LATEXMKFLAGS = -use-make -xelatex -file-line-error

SOURCES := $(wildcard *.tex)
FILES := $(SOURCES:.tex=.pdf)

TOPTARGETS := all clean

all:$(FILES)

%.pdf: %.tex
	$(LATEXMK) $(LATEXMKFLAGS) $<

.PHONY: $(TOPTARGETS) $(SUBDIRS)

.PHONY: clean
clean:
	$(LATEXMK) -C

