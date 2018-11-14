#!/bin/bash

set -x

if [[ $EUID -ne 0 ]]; then
   echo "PLEASE RUN AS ROOT!" 1>&2
   exit 1
fi

apt-get update
apt-get install build-essential tmux jq silversearcher-ag ctags
apt-get install vim git bash-completion python3.6 python3-pip
apt-get install curl file autojump mycli
