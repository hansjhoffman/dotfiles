#!/usr/bin/env bash

brew update && brew upgrade

brew install tree
brew install ssh-copy-id
brew install gnupg
brew install tmux
brew install vim
brew install p7zip

# vim stuff
brew install fzf fd
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew cleanup
