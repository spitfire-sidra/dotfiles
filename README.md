## Prerequisite

- [iTerm2](http://iterm2.com/)

- [solarized](http://ethanschoonover.com/solarized)

- [Patched fonts for Powerline users](https://github.com/powerline/fonts)

- [oh my zsh](http://ohmyz.sh/)

- [python](https://www.python.org/)

- [pip](https://pypi.python.org/pypi/pip)

- [ctags](http://ctags.sourceforge.net/)

### oh-my-zsh settings

```
ZSH_THEME=""
HIST_STAMPS="yyyy-mm-dd"
plugins=(git autopep8 autojump docker django vundle virtualenv vim-interaction)
```

## Installation

powerline shell

```
$ git clone https://github.com/milkbikis/powerline-shell
$ cd powerline-shell
$ cp config.py.dist config.py
$ ./install.py
$ ln -s <path/to/powerline-shell.py> ~/powerline-shell.py
```

flake8

```
$ pip install flake8
```

My dotfiles

```
$ chmod +x scripts/install.sh
$ ./scripts/install.sh
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

``
$ ctags -R -o </path/to/ctags/file> <path/to/yourproject>
```

2. Add setting to vimrc

```
set tags=/path/to/ctags/file
```

## Cheatsheet

`F2` - show space/tab

`F3` - toggle paste/nopaste

`F4` - toggle nu/nonu

`F5` - toggle hlsearch/nohlsearch

`F6` - set ignorecase!

`F7` - fake8

`F8` - toggle tagbar

`Ctrl + ]` to jump to the definition

`Ctrl + T` to pop back

`Ctrl + n` to open `NERDTree`

`%` to match it (may not work for some file types)

`,"` to quote a word with `"`

`,'` to quote a word with `'`

`,l"` to quote a line with `"`

`,l'` to quote a line with `'`

`,u` lower case

`,U` upper case

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
