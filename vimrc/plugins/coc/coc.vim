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
  \ 'coc-flutter',
  \ 'coc-flutter-tools'
  \ ]

let g:coc_auto_fix = 1
" Explorer config
nnoremap <F3> :CocCommand explorer<CR>

nmap <space>[ <Plug>(coc-diagnostic-prev)
nmap <space>] <Plug>(coc-diagnostic-next)
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

lua <<EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
require'nvim-web-devicons'.get_icons()
EOF
