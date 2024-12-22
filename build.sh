#!/bin/bash

pandoc ./index.md ./jobs.md ./power-on.md ./computer.md ./cheatsheet.md --from markdown -o nhstream.pdf --template ./eisvogel.latex

bundle exec jekyll build