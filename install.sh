#!/usr/bin/env bash

echo "Installing Homebrew packages"
./brew.sh
echo "Stowing config files"
./unstow.sh
