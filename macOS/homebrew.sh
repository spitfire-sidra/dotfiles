#!/usr/bin/env bash

brew update

brew upgrade

brew install coreutils

# install parallel, pee, ts, sponge ...
brew install moreutils

# install `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# install `readelf`, `objdump`, ...
brew install binutils

# install gnu `sed`, overwriting the built-in `sed`
brew install gnu-sed
brew install bash
brew install homebrew/versions/bash-completion2
brew install zsh zsh-completions
brew install wget
brew install vim --override-system-vi

# install other useful binaries
brew install ack
# ag
brew install the_silver_searcher
brew install git
brew install ssh-copy-id
brew install testssl
brew install tree
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install htop
brew install telnet
# replace built-in ctags
brew install ctags
brew install fzf
brew install autojump
brew install fd
brew install jq
brew install tmux
brew install direnv
brew install mycli

# visual binary diff
brew install vbindiff

brew install imagemagick --with-webp

brew install ripgrep

# nodejs
brew install nodejs
brew install npm
brew install webpack

# enhance quick look
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

# final step
brew cleanup
