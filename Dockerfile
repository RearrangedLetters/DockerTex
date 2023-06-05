FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-lang-german \
    texlive-lang-english

# Fix package versions here, e.g.:
# RUN tlmgr install latexmk==4.76

