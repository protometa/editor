
function! s:goyo_enter()
  set linebreak
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

