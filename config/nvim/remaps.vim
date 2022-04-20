
" Escape sequence
imap kj <Esc>

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Toggle between buffers
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nnoremap <C-p> :Commands<Cr>
nnoremap <C-e> :Files<Cr>
nnoremap <C-f> :Rg<Cr>
nmap <Leader>bl :Buffers<CR>
nmap <Leader>g :GFiles<CR>
nmap <Leader>e :Files<CR>
nmap <Leader>f :Rg<CR>
nmap <Leader>F :BLines<CR>
nmap <Leader>p :Commands<CR>
nmap <Leader>g? :GFiles?<CR>
nmap <Leader>h :History<CR>

" CTRL+S to Save
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

" Command to write and close buffer without closing window
map <Leader>w :b#<bar>bd#<CR>

" toggle NERDTree
nmap <Leader>t :NERDTreeToggle<CR>

" Open terminal below
nmap <Leader>T :botright10 split <bar> terminal <CR>

" Search for selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

