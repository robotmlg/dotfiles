#!/bin/sh

stow bash
stow zsh
stow vim
stow git
stow tmux
mkdir ~/.todo
stow todo --target=~/.todo
