#!/bin/bash

shopt -s extglob

# for each in !(README|LICENSE).md; do
#     printf "Converting %s\n" $each
#     pandoc $each --from markdown -o "nhstream-$(basename $each .md).pdf" --template ./eisvogel.latex
# done

# qpdf --empty --pages $(printf "nhstream-%s.pdf " "${arr[@]}") -- nhstream.pdf

arr=(index power-on jobs computer cheatsheet)

pandoc $(printf "%s.md " "${arr[@]}") --from markdown -o "nhstream.pdf" --template ./eisvogel.latex

shopt -u extglob

bundle exec jekyll build