#!/usr/bin/env bash

# Install tools with homebrew


# check for homebrew and install if you need to
if test ! $(which brew); then
  echo "Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

# update bash
brew install bash
echo "Adding new bash to allowed shells"
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash # change user shell to new one

# core
brew install git
brew install vim --override-system-vi
brew install tmux

# utils
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install stow
brew install tree
brew install nmap

# languages
brew install python3

# fun
brew install sl
brew install gti

# set up casks
brew tap caskroom/cask

# apps
brew cask install dropbox
brew cask install karabiner
brew cask install flux
brew cask install slimbatterymonitor
brew cask install bettertouchtool
brew cask install twitterrific
brew cask install iterm2
brew cask install java
brew cask install firefox

brew cleanup
