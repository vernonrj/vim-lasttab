" lasttab.vim - Easily switch to the previously-used tab
"
" File:    lasttab.vim
" Author:  Vernon Jones <vernonrjones@gmail.com>
" Version: 0.1.0
" License: Vim License (see :help license)


"" Switch to last-used tab

" Hold last used-tab in global state
let g:LastTab_lasttab = tabpagenr()

augroup LastTabAutoGroup
  autocmd!
  " Update it every time you leave a tab
  autocmd TabLeave * let g:LastTab_lasttab = tabpagenr()
augroup END


" Keymapping for the switch
nnoremap <silent> <Plug>LastTabLastUsedTab :exe "tabn ".g:LastTab_lasttab<CR>

if !hasmapto('<Plug>LastTabLastUsedTab') " Default
  nmap <unique> <M-`> <Plug>LastTabLastUsedTab
endif


"" Switch to last-used buffer

" Make a user-modifiable keymapping that can be used to pick the last buffer
nnoremap <silent> <Plug>LastTabLastUsedBuffer :b#<CR>

if !hasmapto('<Plug>LastTabLastUsedBuffer') " Default
  nmap <unique> <Leader>` <Plug>LastTabLastUsedBuffer
endif

" vim: et ts=2 sts=2 sw=2
