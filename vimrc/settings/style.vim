" Tema
colorscheme codedark
set background=dark
" Transparencia
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermfg=NONE guibg=NONE


" Barra inferior
let g:airline_theme='base16_spacemacs'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_z                   = airline#section#create([
     \ '%1p%% ',
     \ 'Ξ%l%',
     \ '\⍿%c'])
let g:mucomplete#enable_auto_at_startup = 1
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t' 
let g:airline#extensions#tabline#show_buffers = 1 " Mostrar sólo el nombre del archivo
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

