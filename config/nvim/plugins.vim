
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
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fannheyward/coc-rust-analyzer'

" Pretty much just for format on save
Plug 'rust-lang/rust.vim'

" Easy alignment tool
Plug 'junegunn/vim-easy-align'

" Theme
Plug 'lifepillar/vim-gruvbox8'

" Commenting tool
Plug 'tpope/vim-commentary'

" TOML syntax
Plug 'cespare/vim-toml'

call plug#end()

