## Common Prerequisites

### Languages

- [Golang](https://golang.org/)
- [Python 3](https://www.python.org/)
- [Node.js](https://nodejs.org/en/)
    - Binary distributions: [nodesource](https://github.com/nodesource/distributions)
    - [nvm](https://github.com/nvm-sh/nvm)

### Editors

- VIM 8.0 or later
- [VSCode](https://code.visualstudio.com/)

### Docker

- [OrbStack](https://orbstack.dev/)

### Fonts

- [Patched fonts for Powerline users](https://github.com/powerline/fonts)

## Ubuntu / Debian

### Prerequisites

- [jedi](https://github.com/davidhalter/jedi)

### Install packages via apt-get

```
$ bash debian_ubuntu/apt.sh
```

### Install packages via linuxbrew

```
$ bash debian_ubuntu/linuxbrew.sh
```

## macOS

### Prerequisites

- Xcode
- [Anaconda](https://docs.continuum.io/anaconda/)
- [Jupyter notebook extensions](https://github.com/ipython-contrib/jupyter_contrib_nbextensions)
- [Chrome](https://www.google.com/intl/zh-TW_ALL/chrome/)
- [Homebrew](https://brew.sh/)
- [Oh My ZSH!](http://ohmyz.sh/)
- [iTerm2](http://iterm2.com/)
- [Ollama](https://ollama.com/)
- [OrbStack](https://orbstack.dev/)

### Recommended macOS Apps

- [AppCleaner](https://freemacsoft.net/appcleaner/)
- [Aware](https://itunes.apple.com/tw/app/aware/id1082170746?mt=12)
- [Bear](http://www.bear-writer.com/)
- [CheatSheet](https://mediaatelier.com/CheatSheet/)
- [Contexts](https://contexts.co/)
- [DaisyDisk](https://itunes.apple.com/us/app/daisydisk/id411643860)
- [Dropa](https://itunes.apple.com/app/easydrop/id1362416136)
- [Dropbox](https://www.dropbox.com/)
- [Gifrocket](http://www.gifrocket.com/)
- [Itsycal](https://www.mowglii.com/itsycal/)
- [MacDown](https://macdown.uranusjr.com/)
- [Medis](http://getmedis.com/)
- [Numi](https://numi.io/)
- [Postgres.app](http://postgresapp.com/)
- [Postico](https://eggerapps.at/postico/)
- [Postman](https://www.getpostman.com/)
- [Raycast](https://www.raycast.com/)
- [Sequel Pro](https://www.sequelpro.com/)
- [ShiftIt](https://github.com/fikovnik/ShiftIt)
- [Shuttle](http://fitztrev.github.io/shuttle/)
- [Unclutter](https://itunes.apple.com/us/app/unclutter/id577085396)

### Install tools via brew

```
$ bash macOS/homebrew.sh
```

### oh-my-zsh settings

You can change the following configurations in `~/.zshrc`

```
ZSH_THEME="ys"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git gitfast git-extras autopep8 autojump docker docker-compose vundle virtualenv vim-interaction zsh-autosuggestions)
```

## Install dotfiles

```
$ chmod +x install.sh
$ ./install.sh
```

## Update Git Configurations

```
git config --global user.name "Your Name Here"
git config --global user.email "your_email@example.com"
git config --global core.editor "Your favorite text editor"
git config --global core.excludesfile '~/.gitignore'
git config --global credential.helper osxkeychain               # macOS
git config --global credential.helper cache                     # linux
git config --global credential.helper 'cache --timeout=28800'   # linux
```

## Choose Global Python Version

```
$ pyenv install -l
$ pyenv install 3.12.7
$ pyenv global 3.12.7
```

## Choose Global Nodejs Version

```
$ nvm ls-remote --lts
$ nvm install 12.16.1
$ nvm use 12.16.1
```

## Chrome

### Recommended Extensions

- [EditThisCookie](http://www.editthiscookie.com/)
- [Google Webspam Report](https://chrome.google.com/webstore/detail/google-webspam-report-by/efinmbicabejjhjafeidhfbojhnfiepj)
- [HTTPS Everywhere](https://www.eff.org/https-everywhere)
- [JSON viewer](https://github.com/tulios/json-viewer)
- [LastPass](https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd)
- [Lighthouse](https://chrome.google.com/webstore/detail/lighthouse/blipmdconlkpinefehnmjammfjpmpbjk)
- [Momentum](https://chrome.google.com/webstore/detail/momentum/laookkfknpbbblfpciffpaejjkokdgca)
- [NimoTab](https://chrome.google.com/webstore/detail/nimotab/mhhkfkjgnfddpodoepjigdeaaookhfln)
- [Page Analytics](https://chrome.google.com/webstore/detail/page-analytics-by-google/fnbdnhhicmebfgdgglcdacdapkcihcoh)
- [Vue.js devtools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
- [WhatFont](https://chrome.google.com/webstore/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm)
- [ScreenShot Capture & Editor Tool](https://chrome.google.com/webstore/detail/screenshot-capture-editor/haiidfhfnmfmicpakjjkibpcdoolnbbo)
- [CSS Peeper](https://chrome.google.com/webstore/detail/css-peeper/mbnbehikldjhnfehhnaidhjhoofhpehk)

## Misc

### Tools

- [Cerebro](https://github.com/lmenezes/cerebro)

### Customized bash/zsh rc files

Just put bash/zsh rc files in `~/.bashrc.d` / `zshrc.d`

### Install vim plugins using Vundle & vim-plug

* Launch vim and run `:PluginInstall` `:PlugInstall`

### How to programming with ctags

1. To generate ctags file

    ```
    $ ctags -R -o </path/to/ctags/file> <path/to/yourproject>
    ```

2. Add setting to vimrc

    ```
    set tags=/path/to/ctags/file
    ```

## My Vim shortcuts

### [Emmet](https://github.com/mattn/emmet-vim)

`Crtl-y-,` to expand abbreviations

### Vim shortcuts

`Ctrl-j` move to the split below

`Ctrl-k` move to the split above

`Ctrl-l` move to the split to the right

`Ctrl-h` move to the split to the left

`F2` - show space/tab

`F3` - toggle paste/nopaste

`F4` - toggle nu/nonu

`F5` - toggle hlsearch/nohlsearch

`F6` - set ignorecase!

`F7` - fake8

`F8` - toggle tagbar

`F9` - toogle indentlines

`Ctrl + ]` to jump to the definition

`Ctrl + T` to pop back

`Ctrl + n` to open `NERDTree`

`,vv` to open `Vifm`

`%` to match it (may not work for some file types)

`,c` to clear highlight search result

`,"` to quote a word with `"`

`,'` to quote a word with `'`

`,l"` to quote a line with `"`

`,l'` to quote a line with `'`

`,u` lower case

`,U` upper case

`,→` next vim tab page

`,←` previous vim tab page

`,,w` jump between words

`,l` to set nonumber

### [ultisnips](https://github.com/SirVer/ultisnips)

`,tab` ultisnips

### [easymotion](https://github.com/easymotion/vim-easymotion)

`s` 1 character search

`ss` 2 characters search

### [vim-fugitive](https://github.com/tpope/vim-fugitive)

`,gd` git diff

`,gs` git status

`,gb` git blame

### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

`,hp` preview

`,hu` undo

`,hs` stage

### [fzf.vim](https://github.com/junegunn/fzf.vim)

`,f` list files

### [CtrlP](http://kien.github.io/ctrlp.vim/)

`Ctrl + p`

### [Tabular](https://github.com/godlygeek/tabular)

`:Tab /:` or `:Tab /|` or `:Tab /=`

### [jedi-vim](https://github.com/davidhalter/jedi-vim)

`Ctrl + O` autocomplete

## Extends vimrc

Create a file with name `user.vim` and put it under the following folder:

```
$ mv user.vim ~/.vim/
```

## Neovim shortcuts

`,tm` vim table mode

[lazyvim keymaps](https://www.lazyvim.org/keymaps)

## Optional Tools

- [Ansible](https://www.ansible.com/)
- [Cloud SDK](https://cloud.google.com/sdk/)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [aws-cli](https://github.com/aws/aws-cli/tree/v2#installation)
- [aws-shell](https://github.com/awslabs/aws-shell)
- [MySQL Workbench](https://www.mysql.com/products/workbench/)
- [pg-cli](https://github.com/dbcli/pgcli)
- [pydiction](https://github.com/rkulla/pydiction) (Vim autocomplete plugin for python)
- [scm breeze](https://github.com/scmbreeze/scm_breeze)
- [swagger editor](https://github.com/swagger-api/swagger-editor)

## Recommended fonts for terminal

- [ ] [Nerd Fonts](https://www.nerdfonts.com/) [using brew](https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e)
- [ ] Consolas (built-in on macOS)
- [x] [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
- [ ] [Anonymous Pro](http://www.marksimonson.com/fonts/view/anonymous-pro)
- [ ] [Ubuntu Mono](http://font.ubuntu.com/)
- [ ] [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Main_Page)

## Recommended colorschemes for vim

- [ ] [Molokai](https://github.com/tomasr/molokai)
- [ ] [Kalisi](https://github.com/freeo/vim-kalisi)
- [ ] [GRB256](https://github.com/alindeman/grb256)
- [ ] [Tomorrow](https://github.com/chriskempson/tomorrow-theme)
- [x] [Solarized](https://github.com/altercation/vim-colors-solarized)
