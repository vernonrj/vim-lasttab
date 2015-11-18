" Switch to previous buffer
nnoremap <Leader>` :b#<CR>

" switch to previous tab
let g:lasttab = tabpagenr()
nnoremap <M-`> :exe "tabn ".g:lasttab<CR>
augroup LastTabAutoGroup
    autocmd!
    autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

