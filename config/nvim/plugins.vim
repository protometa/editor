
call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lifepillar/vim-gruvbox8'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

call plug#end()

