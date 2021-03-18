#!/usr/bin/env bash

docker run --rm -v "${PWD}":/data pandoc/latex \
  -V geometry:margin=0.75in \
  -f markdown \
  -t latex \
  -o "William Kray Resume.pdf" \
  README.md
