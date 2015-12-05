# golang
if [ -d "/usr/local/go/bin" ]; then
    export PATH=$PATH:/usr/local/go/bin
fi

# Postgres.app
if [ -d "/Applications/Postgres.app/Contents/Versions/9.4/bin" ]; then
    export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
fi

export EDITOR='vim'

# python
export PYTHONSTARTUP=~/.pystartup

# alias
alias gp='fgrep -R -n -I --colour=always'
alias cal='cal | grep -C 6 --color -e " $(date +%e)" -e "^$(date +%e)"'
alias g='git'
alias v='vim'

# unset some env variables
unset LC_CTYPE

# my favor grep
function mgrep()
{
    grep -s -n -r --binary-files=without-match --color "$@"
}

source ~/.git-prompt.sh
zstyle ':completion:*:*:git:*' script ~/.git-completion.zsh

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
