#!/usr/bin/env bash

# Install tools with homebrew

# check for homebrew and install if you need to
if test ! $(which brew); then
  echo "Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "installing Brewfile"
brew bundle install

echo "Adding new bash to allowed shells"
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash # change user shell to new one
