
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

" Switch to buffer by tabline ordinal
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" Close buffer by tabline ordinal
nmap <Leader>q1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>q2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>q3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>q4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>q5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>q6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>q7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>q8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>q9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>q0 <Plug>lightline#bufferline#delete(10)
