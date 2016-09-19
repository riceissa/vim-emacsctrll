if exists("g:loaded_emacsctrll")
  finish
endif
let g:loaded_emacsctrll = 1

if !hasmapto("<Plug>EmacsCtrlL", "i") && "" == mapcheck("<C-L>","i")
  imap <unique> <C-L> <Plug>EmacsCtrlL
endif
inoremap <expr> <unique> <script> <Plug>EmacsCtrlL (pumvisible() <bar><bar> &insertmode) ? '<C-L>' : '<C-\><C-O>' . <SID>EmacsCtrlL()

" Old mapping
" inoremap <expr> <C-L> (pumvisible() <bar><bar> &insertmode) ? '<C-L>' : '<C-\><C-O>' . <SID>EmacsCtrlL()

function! s:EmacsCtrlL()
  if abs(winline()) <= 1+&scrolloff
    return 'zb'
  elseif abs(winline() - winheight(0)/2) <= 2
    return 'zt'
  elseif abs(winline() - winheight(0)) <= 1+&scrolloff
    return 'zz'
  else
    return 'zz'
  endif
endfunction
