
set tabstop=2
set shiftwidth=2
set expandtab
set linebreak

let mapleader = "\<Space>"
filetype plugin on
set completeopt=menuone
set mouse=a
set nobackup
set nocompatible
set noswapfile
set nowritebackup
set number
set signcolumn=yes
set title
set wrap
setlocal wrap

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" Persist cursor
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Setting for rust.vim
let g:rustfmt_autosave = 1

" no vim-svelte incorrect indenting
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" parse larger portion of file for better syntax highlighting
autocmd BufEnter * :syntax sync minlines=10000

