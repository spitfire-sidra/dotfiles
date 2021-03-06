# python
export PYTHONSTARTUP=~/.pystartup

# golang
if [ -d "/usr/local/go/bin" ]; then
    export PATH=$PATH:/usr/local/go/bin
fi

export HISTTIMEFORMAT='%F %T  '
export EDITOR='vim'

alias gp='fgrep -R -n -I --colour=always'
alias g='git'
complete -o default -o nospace -F _git g
alias v='vim'
alias n='nvim'

# unset some env variables
unset LC_CTYPE

function mgrep()
{
    grep -s -n -r --binary-files=without-match --color=always "$@" | awk -F: '{print $1" +"$2" "$3}'
}

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# powerline-shell

#function _update_ps1() {
#   export PS1="$(~/rivendell/toolkit/powerline-shell.py $? 2> /dev/null)"
#}

#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

alias cal='cal | grep -C 6 --color -e " $(date +%e)" -e "^$(date +%e)"'

# load all files from .bashrc.d directory
if [ -d $HOME/.bashrc.d ]; then
  for file in $HOME/.bashrc.d/*.sh; do
    source $file
  done
fi
