if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'

    alias gcob="git checkout \$(git branch | fzf --cycle --ansi)"

    alias gadd="git status --short | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+2}\" | awk '{print \$2}'  | xargs git add"

    alias gustg="git diff --name-only --cached | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color --staged {+1}\" | xargs git reset HEAD"

    alias gbrd="git branch --color=always | fzf --multi --color=dark --cycle --border --ansi | sed 's/*//' | awk '{print \$1}' | xargs git branch -d"

    alias gco="git diff --name-only | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+1}\" | xargs git checkout"

    alias flsof4="lsof -Pn -i4 | awk '{printf \"%10s %6s %5s %4s %-20s\n\", \$1, \$2, \$3, \$8, \$9}' | fzf --cycle --border --ansi --header-lines=1"

    alias fls="fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"head -n 25 {+1}\" --bind 'ctrl-v:execute(vim {} < /dev/tty)' --bind 'ctrl-o:execute(open \$(dirname {}))' --bind 'ctrl-x:execute(echo {} | pbcopy)'"
fi
