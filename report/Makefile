.PHONY: clean

main.pdf: main.tex sections/intro.tex sections/methods.tex sections/results.tex sections/discussion.tex sections/conclusion.tex sections/review.tex references.bib
	pdflatex main
	biber main
	pdflatex main
	pdflatex main

clean:
	rm *.gz *.blg *.pdf *.log *.aux *.bcf *.bbl *.xml 


