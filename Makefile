UNAME := $(shell uname -s)

all:
ifeq ($(UNAME), Linux)
	pdflatex report.tex
	# evince report.tex
endif

ifeq ($(UNAME), Darwin)
	pdflatex report.tex
	open report.pdf
endif

clean:
	rm -rfv *.pdf *.aux *.out
