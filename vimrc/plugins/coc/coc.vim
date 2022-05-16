let g:coc_global_extensions = [
    "\ 'coc-tabnine',
  \ 'coc-snippets',
    "\ 'coc-python',
  \ 'coc-sql',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-explorer',
  \ 'coc-vetur',
  \ 'coc-html',
  \ 'coc-phpls',
  \ ]
" Explorer config
nnoremap <F3> :CocCommand explorer<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Refactoring mappings
nmap <silent> CR <Plug>(coc-rename)
nmap <silent> CF <Plug>(coc-format-selected)
xmap <silent> CF <Plug>(coc-format-selected)
" "xmap CF  <Plug>(coc-format-selected)
" "nmap CA  <Plug>(coc-codeaction)
" "xmap CA  <Plug>(coc-codeaction-selected)
nmap <leader>fc  <Plug>(coc-fix-current)"


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
