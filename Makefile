default: pdf
all: clean pdf html

pdf: clean esimulationguide.pdf

html:
	latex2html -html_version 4.0,latin1,unicode esimulationguide.tex

%.pdf: esimulationguide.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f esimulationguide.pdf esimulationguide.aux esimulationguide.toc esimulationguide.log
