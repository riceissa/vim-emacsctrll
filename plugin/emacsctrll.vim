if exists("g:loaded_emacsctrll")
  finish
endif
let g:loaded_emacsctrll = 1

if !hasmapto("<Plug>EmacsCtrlL", "i") && "" == mapcheck("<C-L>","i")
  imap <C-L> <Plug>EmacsCtrlL
endif
inoremap <expr> <script> <Plug>EmacsCtrlL (pumvisible() <bar><bar> &insertmode) ? '<C-L>' : '<C-\><C-O>' . <SID>EmacsCtrlL()

function! s:EmacsCtrlL()
  if abs(winline()) <= 1+&scrolloff
    return 'zb'
  elseif abs(winline() - (1+winheight(0))/2) <= 1
    return 'zt'
  else
    return 'zz'
  endif
endfunction
