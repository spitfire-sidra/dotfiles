#!/usr/bin/env bash

brew update

brew upgrade --all

brew install coreutils

# install parallel, pee, ts, sponge ...
brew install moreutils

# install `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# install `readelf`, `objdump`, ...
brew install binutils

# install gnu `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

brew install bash
brew install homebrew/versions/bash-completion2

brew install zsh zsh-completions

brew install wget --with-iri

brew install vim --override-system-vi

# install other useful binaries
brew install ack
brew install git
brew install ssh-copy-id
brew install testssl
brew install tree
brew install p7zip
brew install pigz
brew install pv
brew install rename

# visual binary diff
brew install vbindiff

brew install imagemagick --with-webp

# enhance quick look
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

brew cleanup

