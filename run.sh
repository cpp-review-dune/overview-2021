#!/usr/bin/env bash

pandoc src/main.md -t beamer -o main.pdf # --toc --toc-depth=2
okular main.pdf
