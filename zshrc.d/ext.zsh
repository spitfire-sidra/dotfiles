# my default editor
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

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# direnv
eval "$(direnv hook zsh)"

# ctags
if [[ `uname` == 'Darwin' ]]
then
    alias ctags="`brew --prefix`/bin/ctags"
fi

# mysql-client path
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# golang path
if [ -d "/usr/local/go/bin" ]; then
    export GOPATH=/usr/local/go/bin/
    export PATH=$GOPATH:$GOPATH/bin:$PATH
fi
