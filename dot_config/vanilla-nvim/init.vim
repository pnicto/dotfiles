" vim options
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set mouse=a
set cc=80
set noswapfile
set rnu
set guicursor=""
filetype plugin indent on
set clipboard=unnamed
syntax on
set termguicolors

" set leader
let mapleader=" "

" netrw config
let g:netrw_winsize=20
let g:netrw_liststyle=3

" insert mode keypmaps
inoremap jk <Esc>
inoremap kj <Esc>

" normal mode keypmaps
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
nnoremap gg ggzz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-l> :nohl<CR>
nnoremap <S-l> :w<CR>:bn<CR>zz
nnoremap <S-h> :w<CR>:bp<CR>zz
nnoremap <S-j> <C-d>zz
nnoremap <S-k> <C-u>zz
" open netrw
nnoremap <leader>e :Lexplore<CR>
" open config
nnoremap <leader>c :e ~/.config/vanila-nvim/init.vim<CR> 
" reload config
nnoremap <leader>R :source ~/.config/vanilla-nvim/init.vim<CR>

" visual mode keymaps
vnoremap y ygv<Esc>
