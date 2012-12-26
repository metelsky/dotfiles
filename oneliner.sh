#!/bin/bash
cd ~
if [ -d "dotfiles" ]; then
  cd ~/dotfiles
  git pull
  cd ~
else
  git clone git://github.com/metelsky/dotfiles.git
  ./dotfiles/install.sh --force
fi

/bin/bash