"Para comentar con CTRL+\
map <C-\> <Plug>NERDCommenterInvert
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1

"navigation entre Buffers abiertos
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"navigation entre Buffers abiertos
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <Leader><space> :noh<CR>


"Para ir a una palabra con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

 "Para evitar que se cierre la ventana cuando se cierra el buffer
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

nnoremap <leader>f :ZoomWinTabToggle<CR>



" Maps requeridos
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)


" Resize window with shift + and shift -
nnoremap + <c-w>5>
nnoremap - <c-w>5<

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'


"noremap <leader>b :execute "Shell git blame -L " . eval(line(".")-5) . ",+10 %"<cr>
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>



let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_quit_key = '<Esc>'
let g:multi_cursor_next_key = '<C-m>'
let g:multi_cursor_skip_key = '<C-M>'
let g:pipe2eval_map_key = '<Leader>mg'
