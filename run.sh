#!/usr/bin/env bash

pandoc src/main.md -t beamer -V lang=es --pdf-engine=lualatex -o main.pdf # --toc --toc-depth=2
if [ -e /etc/debian_version ]; then
  okular main.pdf
elif [ -e /etc/arch-release ]; then
  zathura main.pdf
fi
