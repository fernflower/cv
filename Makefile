DOC=ivasilevskaya_cv.pdf

.PHONY: clean default 

default: $(DOC)

$(DOC): %.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
		rm -f $(DOC) *.log *.dvi *.d *.aux *.blg *.out *.nav *.toc *.snm *.vrb
