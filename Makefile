#
# Makefile
# fxi, 2017-05-16 11:11
#

all: cv_en.pdf

.PHONY: cv.pdf all clean

cv_en.pdf: cv.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape %O %S" -use-make cv.tex

clean:
	latexmk -c


# vim:ft=make
#
