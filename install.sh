#!/bin/bash
cd "$(dirname "$0")"

function doIt() {
  for f in `find . -wholename './.*' -type f ! -wholename '*.git/*'`; do
    rm -f "$HOME/${f/.\//}"
    ln -sv "$PWD/${f/.\//}" "$HOME/${f/.\//}"
  done
  unset f
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi

unset doIt

source ~/.bash_profile