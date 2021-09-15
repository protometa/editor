
call plug#begin()

" File tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Theme
Plug 'lifepillar/vim-gruvbox8'

" Commenting tool
Plug 'tpope/vim-commentary'

" TOML syntax
Plug 'cespare/vim-toml'

" Markdown syntax and tools
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Distraction free mode
Plug 'junegunn/goyo.vim'

" Surround
Plug 'tpope/vim-surround'

call plug#end()

