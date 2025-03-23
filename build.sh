#!/bin/bash

shopt -s extglob

arr=(index power-on jobs computer cheatsheet)

for each in "${arr[@]}"; do
    printf "Converting %s\n" $each
    pandoc "$each.md" --from markdown -o "nhstream-$each.pdf" --template ./eisvogel.latex
done

pdftk $(printf "nhstream-%s.pdf " "${arr[@]}") cat output nhstream.pdf

# qpdf --empty --pages $(printf "nhstream-%s.pdf " "${arr[@]}") -- nhstream.pdf

# arr=(index power-on jobs computer cheatsheet)

# pandoc $(printf "%s.md " "${arr[@]}") --from markdown -o "nhstream.pdf" --template ./eisvogel.latex

shopt -u extglob

bundle exec jekyll build