
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | wincmd p | execute 'cd '.argv()[0] | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" minimal UI (removes help prompt)
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', '\.DS_Store$']

" nerdtree git customization
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'~',
                \ 'Staged'    :'+',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'U',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'|',
                \ 'Clean'     :'+',
                \ 'Unknown'   :'',
                \ }
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusShowIgnored = 1

