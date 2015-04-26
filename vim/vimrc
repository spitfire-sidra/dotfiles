" General VIMRC

syntax on

set nocompatible
set backspace=2

set encoding=utf-8
set foldlevelstart=0
set laststatus=2
set modeline
set showtabline=2
set t_Co=256
" in case t_Co alone doesn't work, add this as well:
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set encoding=utf-8

let mapleader=","
let maplocalleader="\\"

set background=dark
colorscheme kalisi

" set background to black
highlight Normal ctermfg=grey ctermbg=black

" Vim Statusline {{{

set statusline=%f
set statusline+=\ %y
set statusline+=%=
set statusline+=%l
set statusline+=,
set statusline+=%c
set statusline+=:
set statusline+=%L
set statusline+=\[%p%%\]

" }}}


" Global Key Mapping {{{

" Key map with leader key
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quote one word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lbl
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lbl

" Quote line
nnoremap <leader>l" ^i"<esc>$a"<esc>^
nnoremap <leader>l' ^i'<esc>$a'<esc>^

" Upper case
nnoremap <leader>U viwU<esc>

" Lower case
nnoremap <leader>u viwu<esc>

" normal key map
nnoremap <space> za
nnoremap <F5> :set nu<CR>
nnoremap <F6> :set nonu<CR>
nnoremap <F7> :set ignorecase!<cr>
nnoremap <F8> :TagbarToggle<cr>
map <F9> :set paste<CR>
map <F10> :set nopaste<CR>
imap <F9> <C-O>:set paste<CR>
imap <F10> <nop>
set pastetoggle=<F10>

" space = -
" tab   = >-
nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

" }}}


" Vundle {{{

filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

Plugin 'kien/ctrlp.vim'

Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}
