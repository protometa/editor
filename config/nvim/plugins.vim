
call plug#begin()

" File tree
Plug 'preservim/nerdtree'

" Git status icons
Plug 'airblade/vim-gitgutter'

" Configure editor
Plug 'editorconfig/editorconfig-vim'

" Status/buffer line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Easy alignment tool
Plug 'junegun" Configure editorn/vim-easy-align'

" Theme
Plug 'lifepillar/vim-gruvbox8'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Commenting tool
Plug 'tpope/vim-commentary'

" TOML syntax
Plug 'cespare/vim-toml'

call plug#end()

