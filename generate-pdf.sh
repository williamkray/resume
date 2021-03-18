#!/usr/bin/env bash

docker run --rm -v "${PWD}":/data williamkray/latex:latest \
  --pdf-engine=xelatex \
  -V geometry:margin=0.75in \
  -V linkcolor:'blue' \
  -V mainfont:"DroidSans" \
  -f gfm \
  -t latex \
  -o "William Kray Resume.pdf" \
  README.md
