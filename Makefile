all:
	latexmk -lualatex main1.tex
	latexmk -lualatex main2.tex

clean:
	-@rm *.dvi *.fls *.log *.pdf *.fdb_latexmk *.aux 2> /dev/null

.PHONY: all clean
