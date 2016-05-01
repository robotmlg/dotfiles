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
brew install reattach-to-user-namespace

# utils
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install stow
brew install tree
brew install nmap
brew install cloc # Count Lines Of Code
brew install ssh-copy-id

# languages
brew install python
brew install python3
pip install virtualenvwrapper

# fun
brew install sl
brew install gti
brew install fortune

# set up casks
brew tap caskroom/cask

# apps
brew cask install apptrap # installs to prefpane directory
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" karabiner
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" slimbatterymonitor
brew cask install --appdir="/Applications" bettertouchtool
brew cask install --appdir="/Applications" twitterrific
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" java
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" libreoffice
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" the-unarchiver
brew install --appdir="/Applications" Caskroom/versions/google-chrome-canary

brew cleanup
