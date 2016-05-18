SRC = demo.tex
PDF = demo.pdf
AUX = demo.aux
TEXC := xelatex
TEXC_OPTS += -shell-escape
TEXMFHOME = $(shell kpsewhich -var-value=TEXMFHOME)
INSTALL_DIR = $(TEXMFHOME)/tex/latex/glasgowtheme

.PHONY: clean install

all: $(PDF)

$(AUX):
	$(TEXC) $(TEXC_OPTS) $(SRC)

$(PDF): beamerthemeglasgow.sty $(AUX) $(SRC)
	$(TEXC) $(TEXC_OPTS) $(SRC)

clean:
	@rm -f $(PDF)
	@git clean -xf

install:
	mkdir -p $(INSTALL_DIR)
	cp *.sty $(INSTALL_DIR)
