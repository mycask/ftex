all: f77 f90

f77:
	make pdf F=77 A=a4
	make pdf F=77 A=a6

f90:
	make pdf F=90 A=a4
	make pdf F=90 A=a6

pdf: clean
	JOB=stanford-fortran-$(F)-tutorial-$(A); \
	cd tutorial_$(F) && \
	for i in 1 2; do \
	    pdflatex -jobname=$$JOB -output-directory=.. index-$(A); \
	done && \
	cd .. && \
	$(MAKE) clean && \
	$(MAKE) view FILE=$$JOB.pdf

view:
	if command -v xdg-open > /dev/null; then \
	    xdg-open "$(FILE)"; \
	elif command -v open > /dev/null; then \
	    open "$(FILE)"; \
	else \
	    echo Cannot find xdg-open or open.; \
	fi

clean:
	rm -rf *.aux *.log *.out *.toc
