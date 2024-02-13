#!/bin/bash
set -exo
# for f in *.md; 
#     do echo "Processing $f file...";
#     quarto render $f --to revealjs || true
#     quarto render $f --to pptx || true
# done

quarto render --to revealjs || true
quarto render --to pptx || true