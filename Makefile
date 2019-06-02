F77 = stanford-fortran-77-tutorial

pdfs: clean
	cd tutorial_77; pdflatex -jobname=$(F77)-a4 -output-directory=.. index
	cd tutorial_77; pdflatex -jobname=$(F77)-a4 -output-directory=.. index
	make clean
	make view FILE=$(F77)-a4
	#cd tutorial_77; pdflatex -jobname=$(F77)-a6 -output-directory=.. index-a6
	#cd tutorial_77; pdflatex -jobname=$(F77)-a6 -output-directory=.. index-a6
	#make clean
	#make view FILE=$(F77)-a6

view:
	if command -v xdg-open > /dev/null; then \
	    xdg-open "$(FILE).pdf"; \
	elif command -v open > /dev/null; then \
	    open "$(FILE).pdf"; \
	else \
	    echo Cannot find xdg-open or open.; \
	fi

clean:
	rm -rf *.aux *.log *.out *.toc
