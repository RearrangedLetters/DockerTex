FROM debian:latest

# Install essential packages
RUN apt-get update && apt-get install -y \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    git \
    python-pygments gnuplot \
    make

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
