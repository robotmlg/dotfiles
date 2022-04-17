#!/usr/bin/env bash

# Install tools with homebrew

# check for homebrew and install if you need to
if test ! $(which brew); then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "installing Brewfile"
brew bundle install
