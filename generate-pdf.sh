#!/usr/bin/env bash

docker run --rm -v "${PWD}":/data williamkray/latex:latest \
  --pdf-engine=xelatex \
  -V geometry:margin=0.75in \
  -V linkcolor:'blue' \
  -V mainfont:"DroidSans" \
  -f gfm \
  -t latex \
  -o "William Kray CV ${GITHUB_REF_NAME}.pdf" \
  README.md

sed '/exclude_start/, /exclude_stop/dg' README.md > resume.md

docker run --rm -v "${PWD}":/data williamkray/latex:latest \
  --pdf-engine=xelatex \
  -V geometry:margin=0.75in \
  -V linkcolor:'blue' \
  -V mainfont:"DroidSans" \
  -f gfm \
  -t latex \
  -o "William Kray Resume ${GITHUB_REF_NAME}.pdf" \
  resume.md

