" Map save to Ctrl + S
map <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
" Indenting in visual mode
" "xnoremap <s-tab> <gv
" "xnoremap <tab> >gv
" " // The switch of the Source Explorer 
" "nmap <F3> :SrcExplToggle<CR> 
" " Maps for indentation in normal mode
"inoremap <tab> >>
"inoremap <s-tab> <<


vnoremap <c-c> "+y<CR>
nnoremap <c-v> "+p<CR>
vnoremap <c-v> "+p<CR>
inoremap <c-v> <Esc>"+p<CR>
"nnoremap <leader>s :w<CR>
"" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y
" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d
" Usar <íder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

