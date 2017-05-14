" General VIMRC

syntax on

set splitbelow
set splitright

set title
set visualbell
set noerrorbells
set mps+=<:>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" config cursor
set gcr=a:blinkon0
set gcr=n:blinkon0
set cursorline
set cursorcolumn

" config mouse
set mouse=r

set nocompatible
set modelines=0
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

set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" new feature from vim 7.3
set relativenumber
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.nvim/undo') == 0
    :silent !mkdir -p ~/.nvim/undo > /dev/null 2>&1
  endif
  set undodir=./.nvim-undo//
  set undodir+=~/.nvim/undo//
  set undofile
endif

let mapleader=","
let maplocalleader="\\"

set background=dark
set scrolloff=5

"colorscheme solarized

" set background to black
highlight Normal ctermfg=grey ctermbg=black

" Global Key Mapping {{{

" turn off vim default regex characters
nnoremap / /\v
vnoremap / /\v

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

" Move a line of text using ALT+[jk]
nmap <A-j> :.m.+1<CR>
nmap <A-k> :.m.-2<CR>

" Move a line of text using ALT+[jk], mac os only
nnoremap ∆ :m .+1<CR>
nnoremap ˚ :m .-2<CR>

" normal key map
nnoremap <space> za
" space = -
" tab   = >-
nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
nnoremap <F3> :set invpaste paste?<CR>
nmap <F4> :set invnumber<CR>
nmap <F5> :set hls!<CR>:set hls?<CR>
nnoremap <F6> :set ignorecase!<CR>
" <F7> flake8
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :IndentLinesToggle<CR>
" vim tab pages
nnoremap <leader><Left> :tabprevious<CR>
nnoremap <leader><Right> :tabnext<CR>
" }}}

nnoremap <leader>c :noh<CR>
nnoremap <leader>l :set norelativenumber<CR>:set nonu<CR>



" NeoBundle Scripts

filetype off " required

if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins

NeoBundle 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"NeoBundle 'tmhedberg/SimpylFold'
"let g:SimpylFold_docstring_preview = 1

NeoBundle 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc']
map <C-n> :NERDTreeToggle<CR>

NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

NeoBundle 'kien/ctrlp.vim'
set wildignore+=*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows

let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore='\v\.(exe|so|dll)$'

NeoBundle 'nvie/vim-flake8'
let g:flake8_quickfix_height=10
"let g:flake8_show_in_gutter=1

" Asynchronous Lint Engine
NeoBundle 'w0rp/ale'
let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'e-'
let g:ale_sign_warning = 'w-'

NeoBundle 'othree/html5.vim'
NeoBundle 'othree/html5-syntax.vim'

NeoBundle 'tpope/vim-fugitive'
nmap <leader>gd :Gdiff<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gb :Gblame<CR>

NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'rking/ag.vim'

NeoBundle 'python.vim'
let python_highlight_all=1

NeoBundle 'matchit.zip'

NeoBundle 'majutsushi/tagbar'

NeoBundle 'ap/vim-css-color'

NeoBundle 'godlygeek/tabular'

NeoBundle 'Yggdroot/indentLine'
let g:indentLine_enabled=0
let g:indentLine_char='︙'

NeoBundle 'easymotion/vim-easymotion'
nmap s <Plug>(easymotion-s)
nmap s <Plug>(easymotion-s2)

" color scheme
NeoBundle 'jnurmine/Zenburn'

" UltiSnips, >= vim 7.4 required
" Track the engine.
NeoBundle 'SirVer/ultisnips'

" jedi vim
NeoBundle 'davidhalter/jedi-vim'
let g:jedi#completions_command = "<C-O>"

" Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" create ansii table much easier
NeoBundle 'dhruvasagar/vim-table-mode'

NeoBundle 'Valloric/YouCompleteMe', {
	\ 'build'      : {
	\ 'mac'     : './install.sh --clang-completer --system-libclang --omnisharp-completer',
	\ 'unix'    : './install.sh --clang-completer --system-libclang --omnisharp-completer',
	\ 'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
	\ 'cygwin'  : './install.sh --clang-completer --system-libclang --omnisharp-completer'
	\ }
\ }

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
"End NeoBundle Scripts


" remove tailing spaces when save file
autocmd BufWritePre * :%s/\s\+$//e

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Extra user or machine specific settings {{{
if filereadable(glob('~/.vim/user.vim'))
    source ~/.vim/user.vim
endif
" " }}}
