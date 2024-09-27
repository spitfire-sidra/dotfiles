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
brew install bat
brew install bash-completion@2
brew install zsh zsh-completions
brew install wget
brew install vim
brew install vifm

# neovim
brew install neovim
brew install luarocks

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install other useful binaries
brew install ack
# ag
brew install the_silver_searcher
#brew install git
#brew install ssh-copy-id
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

brew install imagemagick

brew install ripgrep

# nodejs
brew install nvm
brew install yarn

# enhance quick look
brew install --cask qlmarkdown
brew install --cask quicklook-json
brew install --cask quicklook-csv

# python
brew install pyenv

# fonts
brew install --cask font-sauce-code-pro-nerd-font

# final step
brew cleanup
