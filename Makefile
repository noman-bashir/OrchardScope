ALL = paper.ps
PS  = paper.ps
PDF = paper.pdf
TEX = paper.tex 

all:
	pdflatex paper
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper
	

clean:
	mv paper.pdf 1-paper.pdf
	yes | rm -f $(PS) $(PDF) *.dvi *.log *.aux *.bbl *.blg *.out *.synctex.gz
