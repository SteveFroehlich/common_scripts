#!/bin/sh

if [ -z ${1+x} ]; then
  echo "\nA file must be specified. \nIe: $ ./open_with_sublime_text.sh myFileName.py\n"
  exit 1
fi

open -a "Sublime Text" $1

