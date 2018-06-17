export EDITOR='vim'

# python
export PYTHONSTARTUP=~/.pystartup

# alias
alias gp='fgrep -R -n -I --colour=always'
alias cal='cal | grep -C 6 --color -e " $(date +%e)" -e "^$(date +%e)"'
alias g='git'
alias v='vim'
alias n='nvim'

# unset some env variables
unset LC_CTYPE

# my favor grep
function mgrep()
{
    grep -s -n -r --binary-files=without-match --color "$@"
}

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# load all files from .zshrc.d directory
if [ -d $HOME/.zshrc.d ]; then
  for file in $HOME/.zshrc.d/*.zsh; do
    source $file
  done
fi

# golang
if [ -d "/usr/local/go/bin" ]; then
    export GOPATH=/usr/local/go/bin/
    export PATH=$GOPATH:$GOPATH/bin:$PATH
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"