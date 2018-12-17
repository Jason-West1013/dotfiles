" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

Plug 'hhsnopek/vim-firewatch'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'

call plug#end()

syntax enable
colorscheme firewatch
set nocompatible
set number
set backspace=indent,eol,start
set background=dark
set tabstop=4

" needed for lightline plugin to work
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ 'active': {
	\	'left': [ [ 'mode','paste' ],
	\			  [ 'gitbranch','readonly','filename','modified' ] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'gitbranch#name'
	\ },
	\ }

" allows nerdtree to be opened with ctrl+n
map <C-m> :NERDTreeToggle<CR>

