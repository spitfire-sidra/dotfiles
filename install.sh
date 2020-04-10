#!/bin/bash

# show progress
set -x

# setup tmux config
cp -i ./tmux/tmux.conf ${HOME}/.tmux.conf

# setup git env
cp -i ./git/gitconfig ${HOME}/.gitconfig
cp -i ./git/gitignore ${HOME}/.gitignore

# common editor configs
# https://editorconfig.org/
cp -i ./editorconfig ${HOME}/.editorconfig

# setup vim & gvim env
cp -i ./vim/vimrc ${HOME}/.vimrc
cp -i ./vim/gvimrc ${HOME}/.gvimrc

# setup nvim env
mkdir -p ${HOME}/.config/nvim
cp -i ./nvim/init.vim ${HOME}/.config/nvim/init.vim

mkdir -p ${HOME}/.vim/colors
cp -i -r ./vim/colors ${HOME}/.vim/

# setup ctags config
cp -i ./ctags ${HOME}/.ctags

# mysql rc files
cp -i ./my.cnf ${HOME}/.my.cnf

# setup python rc files
cp -i ./pystartup ${HOME}/.pystartup

# setup curl & wget rc files
cp -i ./curlrc ${HOME}/.curlrc
cp -i ./wgetrc ${HOME}/.wgetrc

# setup ssh config
if [ ! -d "${HOME}/.ssh/config" ]; then
    cp ./ssh/config ${HOME}/.ssh/config
fi

CURRENT_PATH=${PWD}

if [ ${SHELL} == "/bin/zsh" ]; then
    NEWLINE="source $CURRENT_PATH/zshrc"
    if ! grep -Fxq "$NEWLINE" ~/.zshrc
    then
        echo $NEWLINE >> ~/.zshrc
        source ~/.zshrc
        cp -r ./zshrc.d $HOME/.zshrc.d
    fi
fi

if [ ${SHELL} == "/bin/zsh" ]; then
    NEWLINE="fpath=(~/.zsh \$fpath)"
    if ! grep -Fxq "$NEWLINE" ~/.zshrc
    then
        echo $NEWLINE >> ~/.zshrc
        source ~/.zshrc
    fi
fi

if [ ${SHELL} == "/bin/zsh" ]; then
    NEWLINE="source ~/.git-prompt.sh"
    if ! grep -Fxq "$NEWLINE" ~/.zshrc
    then
        echo $NEWLINE >> ~/.zshrc
        source ~/.zshrc
    fi
fi

if [ ${SHELL} == "/bin/bash" ]; then
    NEWLINE="source $CURRENT_PATH/bashrc"
    if ! grep -Fxq "$NEWLINE" ~/.bashrc
    then
        mkdir -p $HOME/.bashrc.d
        cp -r ./bashrc.d/* $HOME/.bashrc.d
        echo $NEWLINE >> ~/.bashrc
        source ~/.bashrc
    fi
fi

# install vundle
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    mkdir ${HOME}/.vim/bundle/
    git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi

# install patched fonts
git clone https://github.com/powerline/fonts.git
cd fonts
chmod +x install.sh
./install.sh
cd ..
