let g:coc_global_extensions = [
  \ 'coc-tabnine',
  \ 'coc-snippets',
  \ 'coc-python',
  \ 'coc-sql',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-explorer',
  \ 'coc-vetur',
  \ 'coc-html',
  \ 'coc-phpls',
  \ 'coc-styled-components',
  \ 'coc-highlight',
  \ 'coc-pairs',
  \ 'coc-fzf-preview',
  \ 'coc-flutter',
  \ 'coc-flutter-tools'
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
nmap <leader> fc  <Plug>(coc-fix-current)"

" Config Flutter
nnoremap <F4> :CocCommand flutter.dev.hotRestart<CR>
nnoremap <F6> :CocCommand flutter.run<CR>
nnoremap <leader>fR :FlutterHotRestart<cr>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-w> <Plug>(coc-range-select)
xmap <silent> <C-w> <Plug>(coc-range-select)


" Run the Code Lens action on the current line.
nmap <silent> CT  <Plug>(coc-codelens-action)

autocmd CursorHold * silent call CocActionAsync('highlight')
