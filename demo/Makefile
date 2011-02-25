DOC = demo_talk
PLOT = experiments

TEX_FILES = $(wildcard *.tex)

$(DOC).pdf: $(TEX_FILES) $(wildcard *.sty) $(wildcard *.pdf) $(PLOT).pdf
	@xelatex $(DOC).tex
	@xelatex $(DOC).tex
	@xelatex $(DOC).tex

$(PLOT).pdf: $(PLOT).gp

%.eps: %.gp
	@gnuplot < $<

%.pdf: %.eps
	@epstopdf $<

clean:
	-@rm -f *.aux *.log *.out *.nav *.snm *.toc

clobber: clean
	-@rm -f $(DOC).pdf $(PLOT).pdf

