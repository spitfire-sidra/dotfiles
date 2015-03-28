#!/bin/bash

# show progress
set -x

cp -i ./tmux/tmux.conf ${HOME}/.tmux.conf

cp -i ./git/gitconfig ${HOME}/.gitconfig
cp -i ./git/gitignore ${HOME}/.gitignore
cp -i ./git/git-completion.bash ${HOME}/.git-completion.bash
cp -i ./git/git-completion.zsh ${HOME}/.git-completion.zsh
cp -i ./git/git-prompt.sh ${HOME}/.git-prompt.sh

cp -i ./vimrc ${HOME}/.vimrc

cp -i ./my.cnf ${HOME}/.my.cnf

cp -i ./pystartup ${HOME}/.pystartup.cnf

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
