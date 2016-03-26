#!/usr/bin/env bash

# Install tools with homebrew


# check for homebrew and install if you need to
if test ! $(which brew); then
  echo "Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

# core
brew install git
brew install vim 
brew install tmux

# utils
brew install stow
brew install tree

# languages
brew install python3

# fun
brew install sl
brew install gti
