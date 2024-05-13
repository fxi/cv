# Makefile
# Improved LaTeX Makefile for building a CV in English
# Last modified by fxi, 2024-05-13

# Phony targets ensure commands are run regardless of files named similarly
.PHONY: all clean

# Default target that builds the PDF
all: cv_english.pdf

# Rule to create cv_english.pdf from cv_english.tex
cv_english.pdf: cv_english.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape %O %S" -use-make cv_english.tex

# Clean target that cleans up auxiliary files created by the build process
clean:
	latexmk -c

# 'make' looks for a Makefile in the current directory and follows the instructions therein.
# The 'all' target is typically the default, building the main output, in this case, cv_english.pdf.
# The 'clean' target uses 'latexmk -C' which is more thorough than 'latexmk -c' as it also removes PDF files along with other cleanup tasks.
