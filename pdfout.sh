#!/bin/bash

pandoc ./index.md ./jobs.md ./power-on.md ./computer.md --from markdown -o nhstream.pdf --template ./eisvogel.latex