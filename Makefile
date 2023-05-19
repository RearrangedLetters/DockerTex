FILE=main  # Name of the main .tex file

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
    pdflatex -interaction=nonstopmode -shell-escape $(FILE).tex
    bibtex $(FILE)
    pdflatex -interaction=nonstopmode -shell-escape $(FILE).tex
    pdflatex -interaction=nonstopmode -shell-escape $(FILE).tex
