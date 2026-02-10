" ========== General Config ==========
set title
set number
set autoread
syntax on

" ========== Indentation ==========
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2

function! s:on_lsp_buffer_enabled() abort
  if &buftype ==# 'nofile' || &filetype =~# '^\(quickrun\)' || getcmdwintype() ==# ':'
    return
  endif
  " Language Server が有効になったバッファに対する設定
  setlocal omnifunc=lsp#complete

  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  nmap <buffer> <c-k> <plug>(lsp-hover)
endfunction

augroup vimrc_lsp_install
  autocmd!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
