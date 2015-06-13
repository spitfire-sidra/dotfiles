#!/bin/bash

# show progress
set -x

cp -i ./tmux/tmux.conf ${HOME}/.tmux.conf

cp -i ./git/gitconfig ${HOME}/.gitconfig
cp -i ./git/gitignore ${HOME}/.gitignore
cp -i ./git/git-completion.bash ${HOME}/.git-completion.bash

mkdir -p ~/.zsh
cp -i ./git/git-completion.zsh ${HOME}/.zsh/_git

cp -i ./git/git-prompt.sh ${HOME}/.git-prompt.sh

cp -i ./vim/vimrc ${HOME}/.vimrc

cp -i ./ctags ${HOME}/.ctags

mkdir -p ${HOME}/.vim/colors
cp -i -r ./vim/colors ${HOME}/.vim/

cp -i ./my.cnf ${HOME}/.my.cnf

cp -i ./pystartup ${HOME}/.pystartup

CURRENT_PATH=${PWD}

if [ ${SHELL} == "/bin/zsh" ]; then
    NEWLINE="source $CURRENT_PATH/zshrc"
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
        echo $NEWLINE >> ~/.bashrc
        source ~/.bashrc
    fi
fi

# install vundle
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    mkdir ${HOME}/.vim/bundle/
    git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi