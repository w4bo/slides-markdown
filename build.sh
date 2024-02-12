#!/bin/bash
set -exo
for f in *.md; 
    do echo "Processing $f file...";
    pandoc -t revealjs -s --mathjax=https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js -s -o _site/$f.html $f -F mermaid-filter -V revealjs-url=https://unpkg.com/reveal.js@3.9.2/ --include-in-header=slides.css -V theme=white --slide-level 2 || true
done