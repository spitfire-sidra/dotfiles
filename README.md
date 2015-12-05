## Prerequisite

- [iTerm2](http://iterm2.com/)

- [solarized](http://ethanschoonover.com/solarized)

- [Patched fonts for Powerline users](https://github.com/powerline/fonts)

- [oh my zsh](http://ohmyz.sh/)

- [python](https://www.python.org/)

- [pip](https://pypi.python.org/pypi/pip)

- [ctags](http://ctags.sourceforge.net/)

- [autojump](https://github.com/joelthelion/autojump)

- [ag](https://github.com/ggreer/the_silver_searcher)

## Optional

- [golang](https://golang.org/)

- [Postgres.app (Mac OS X only)](http://postgresapp.com/)

- [Boot2docker (Mac OS X only)](https://github.com/boot2docker/boot2docker)

- [pydiction (vim autocomplete plugin for python)](https://github.com/rkulla/pydiction)

- [Powerline-shell](https://github.com/milkbikis/powerline-shell)

```
$ git clone https://github.com/milkbikis/powerline-shell
$ cd powerline-shell
$ cp config.py.dist config.py
$ ./install.py
$ ln -s <path/to/powerline-shell.py> ~/powerline-shell.py
```

### oh-my-zsh settings

```
ZSH_THEME=""
HIST_STAMPS="yyyy-mm-dd"
plugins=(git autopep8 autojump docker docker-compose django vundle virtualenv vim-interaction)
```

## Installation


flake8

```
$ pip install flake8
```

My dotfiles

```
$ chmod +x install.sh
$ ./install.sh
```

Git Configurations

```
git config --global user.name "Your Name Here"
git config --global user.email "your_email@example.com"
git config --global core.editor "Your favorite text editor"
git config --global core.excludesfile '~/.gitignore'
```

## Install vim plugins using Vundle

* Launch vim and run `:PluginInstall`

or

* To install from command line: `vim +PluginInstall +qall`

## Git completion

The version that I am using. Last commit: `55a3b3c26e`

## Programming with ctags

1. To generate ctags file

    ```
    $ ctags -R -o </path/to/ctags/file> <path/to/yourproject>
    ```

2. Add setting to vimrc

    ```
    set tags=/path/to/ctags/file
    ```

## Cheatsheet

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

[easymotion](https://github.com/easymotion/vim-easymotion)

`,gd` git diff

`,gs` git status

`,gb` git blame

[vim-fugitive](https://github.com/tpope/vim-fugitive)

[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

`s` 1 character search

`ss` 2 characters search

[CtrlP](http://kien.github.io/ctrlp.vim/)

## Recommended fonts for terminal

- [ ] Consolas (built-in on MAC OS X)
- [ ] [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
- [ ] [Anonymous Pro](http://www.marksimonson.com/fonts/view/anonymous-pro)
- [ ] [Ubuntu Mono](http://font.ubuntu.com/)
- [x] [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Main_Page)

## Recommended colorschemes for vim

- [ ] [Molokai](https://github.com/tomasr/molokai)
- [x] [Kalisi](https://github.com/freeo/vim-kalisi)
- [ ] [GRB256](https://github.com/alindeman/grb256)
- [ ] [Tomorrow](https://github.com/chriskempson/tomorrow-theme)
- [ ] [Solarized](https://github.com/altercation/vim-colors-solarized)
