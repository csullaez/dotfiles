
let g:mapleader = " "
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Any valid git URL is allowed
" Multiple Plug commands can be written in a single line using | separators
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plugin outside ~/.vim/plugged
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Initialize plugin system
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'troydm/zoomwintab.vim'  
Plug 'haya14busa/incsearch.vim'
"Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"Temas para vim
Plug 'tomasiser/vim-code-dark'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-one' 
"Plug 'dracula/vim', { 'as': 'dracula' }


Plug 'itchyny/vim-gitbranch' 
Plug 'tpope/vim-fugitive'
Plug 'Sirver/ultisnips'
"Complementos para Git y GitLens para vim
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'
"Complements para carpetas e iconos
"Plug 'Shougo/defx.nvim'
"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Complements for typing
Plug 'jiangmiao/auto-pairs' "Complemento para Cerrar parentesis
Plug 'alvan/vim-closetag' "React o HTML complemento para etiquetas
Plug 'tpope/vim-surround'

Plug 'yggdroot/indentline' "Para indentaciones
Plug 'easymotion/vim-easymotion' "Para navegar buscando letras

"It is similar to Eslint
"Plug 'dense-analysis/ale'

"Plug 'lukelbd/vim-tabline'
"Plug 'kdheepak/tabline.nvim'
" Data Base
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-packager'
Plug 'kristijanhusak/vim-dadbod-ui'

"Complement for Scroll
"Plug 'yuttie/comfortable-motion.vim'
Plug 'psliwka/vim-smoothie'
" PHP support
"Plug 'shawncplus/phpcomplete.visyntaxm'

" Para ver funciones

call plug#end()





"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

set ma
set encoding=UTF-8
set title
set nocompatible
set number
set relativenumber                                                              "Show numbers relative to current line
set history=500                                                                 "Store lots of :cmdline history
"set fileencoding=utf-8 
set mouse=a "Use mouse all
set laststatus=2
set nowrap
"setlocal formatoptions=wat
set cursorline
set colorcolumn=150
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set hidden
set ignorecase
set smartcase
set spelllang=en,es
set foldmethod=syntax
"set foldnestmax=10
set nofoldenable
set foldlevel=1
"set showmatch
set splitbelow
set splitright
syntax on
set noswapfile
set nobackup
set nowb
set autoread
set smartindent
set noshowmode
"Theme
set background=dark
syntax enable
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
set background=dark
set t_Co=256
"set termguicolors
" for vim 8
 if (has("termguicolors"))
   set termguicolors     " enable true colors support
 endif
"colorscheme codecolorscheme onedarkdark
colorscheme codedark
"colorscheme onehalfdark 
"colorscheme one
"colorscheme dracula 
"navigation entre Buffers abiertos
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"============transparency=========================
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermfg=NONE guibg=NONE
"Para comentar con CTRL+\
map <C-\> <Plug>NERDCommenterInvert
"Configuracion para explorar
nnoremap <F3> :CocCommand explorer<CR>
"Configuracion para navegar entre los bufers abiertos

vnoremap <c-c> "+y<CR>
nnoremap <c-v> "+p<CR>
vnoremap <c-v> "+p<CR>
inoremap <c-v> <Esc>"+p<CR>
"nnoremap <leader>s :w<CR>
" Usar <líder> + y para copiar al portapapeles
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
" Moverse al buffer siguiente con <líder> + l
"map <leader>l :bnext<CR>
" Moverse al buffer anterior con <líder> + j
"nnoremap <leader>h :bprevious<CR><CR>
" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>
nnoremap <leader>o :new<CR>
nnoremap <leader>vo :vnew<CR>
" Guardar con leader en normal mode
"nnoremap <Leader>s :w<CR>
" Open vertical split
nnoremap <Leader>& :vsp<CR>
nnoremap <Leader>" :sp<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bt :BTags<CR>
nnoremap <Leader>bh :History<CR>
nnoremap <Leader>bs :Files<CR>
nnoremap <leader>f :ZoomWinTabToggle<CR>
map <leader>t :tabnew<CR>
" Clear search highlight
nnoremap <Leader><space> :noh<CR>
" Nerdtree
"nnoremap <F3> :NERDTreeToggle<CR>
"nnoremap <F4> :NERDTreeFind<CR>
"para la indentacion
"==========CONTROL===MAPPINGS====================================
" Map save to Ctrl + S
map <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
" Indenting in visual mode
"xnoremap <s-tab> <gv
"xnoremap <tab> >gv
" // The switch of the Source Explorer 
"nmap <F3> :SrcExplToggle<CR> 
" Maps for indentation in normal mode
inoremap <tab> >>
inoremap <s-tab> <<
" Maps requeridos
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" Resize window with shift + and shift -
nnoremap + <c-w>5>
nnoremap - <c-w>5<
"tab navigation
" Move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Para Buscar con AG
map <S-f> :Ag<CR>
"Para ir a una palabra con easymotion
nmap <Leader>s <Plug>(easymotion-s2)


"set completeopt+=preview
"set completeopt+=menuone
"set completeopt+=noinsert
"set shortmess+=c


let g:mucomplete#enable_auto_at_startup = 1
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t' 
let g:airline#extensions#tabline#show_buffers = 1 " Mostrar sólo el nombre del archivo
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


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


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



" Refactoring mappings
nmap <silent> CR <Plug>(coc-rename)
nmap <silent> CF <Plug>(coc-format-selected)
xmap <silent> CF <Plug>(coc-format-selected)
"xmap CF  <Plug>(coc-format-selected)
"nmap CA  <Plug>(coc-codeaction)
"xmap CA  <Plug>(coc-codeaction-selected)
nmap <leader>fc  <Plug>(coc-fix-current)

"let g:airline_theme='hybridline'
let g:airline_theme='base16_spacemacs'
"let g:airline_theme='fruit'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_z                   = airline#section#create([
			\ '%1p%% ',
			\ 'Ξ%l%',
			\ '\⍿%c'])
"call airline#parts#define_accent('mode', 'black')

" --- Git tools ---
" Gitgutter settings
let g:gitgutter_max_signs             = 5000
let g:gitgutter_sign_added            = '+'
let g:gitgutter_sign_modified         = '»'
let g:gitgutter_sign_removed          = '_'
let g:gitgutter_sign_modified_removed = '»╌'
let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'

highlight GitGutterAdd    guibg=#1b1b1b guifg=#009900 ctermfg=2 cterm=bold 
highlight GitGutterChange guibg=#1b1b1b guifg=#064699 ctermfg=3 cterm=bold
highlight GitGutterDelete guibg=#1b1b1b guifg=#ff2222 ctermfg=1 cterm=bold

highlight GitGutterAddLine    guibg=#004b6e
highlight GitGutterChangeLine guibg=#3e5f8a
highlight GitGutterDeleteLine guibg=#993333

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_relative_time = 1
let g:gitp_blame_format = '     %{account} * %{ago}'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"let g:airline_powerline_fonts = 1
" Moverse al buffer siguiente con <líder> + l
 "map <leader>l :bnext<CR>
 nnoremap <TAB> :bnext<CR>
 nnoremap <S-TAB> :bprevious<CR>
" " Cerrar el buffer actual con <líder> + q
 "Para evitar que se cierre la ventana cuando se cierra el buffer
 nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
 nnoremap <leader>g :new<CR>
 nnoremap <leader>n :vnew<CR>
 " Guardar con leader en normal mode
 "nnoremap <Leader>s :w<CR>
 " B
" 
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_skip_key            = '<C-M>'
let g:pipe2eval_map_key = '<Leader>mg'
hi CursorLine guifg=NONE guibg=#2d3c45 ctermbg=237 gui=NONE term=NONE cterm=NONE

"Configuracion para la base de datos
"" operator mapping
func! DBExe(...)
	if !a:0
		let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
		return 'g@'
	endif
	let sel_save = &selection
	let &selection = "inclusive"
	let reg_save = @@

	if a:1 == 'char'	" Invoked from Visual mode, use gv command.
		silent exe 'normal! gvy'
	elseif a:1 == 'line'
		silent exe "normal! '[V']y"
	else
		silent exe 'normal! `[v`]y'
	endif

	execute "DB " . @@

	let &selection = sel_save
	let @@ = reg_save
endfunc

xnoremap <expr> <Plug>(DBExe)     DBExe()
nnoremap <expr> <Plug>(DBExe)     DBExe()
nnoremap <expr> <Plug>(DBExeLine) DBExe() . '_'

xmap <leader>ps  <Plug>(DBExe)
nmap <leader>ps  <Plug>(DBExe)
vmap <leader>ps <Plug>(DBExe)
nmap <leader>pl <Plug>(DBExeLine)

" Conexion a base de datos

let g:dbs = {
\  'dev': 'postgres://postgres:postgres@localhost:5432/seprec'
\ }


let g:db_ui_auto_execute_table_helpers = 1

let g:db_ui_icons = {
      \ 'expanded': {
      \    'db': '▾ ',
      \    'buffers': '▾ ',
      \   'saved_queries': '▾ ',
      \   'schemas': '▾ ',
      \   'schema': '▾ פּ',
      \   'tables': '▾ 藺',
      \   'table': '▾ ',
      \ },
      \ 'collapsed': {
      \   'db': '▸ ',
      \   'buffers': '▸ ',
      \   'saved_queries': '▸ ',
      \   'schemas': '▸ ',
      \   'schema': '▸ פּ',
      \   'tables': '▸ 藺',
      \   'table': '▸ ',
      \ },
      \ 'saved_query': '',
      \ 'new_query': '璘',
      \ 'tables': '離',
      \ 'buffers': '﬘',
      \ 'add_connection': '',
      \ 'connection_ok': '✓',
      \ 'connection_error': '✕',
      \ }


let g:db_ui_winwidth = 40

let g:db_ui_default_query = 'select * from "{table}" limit 10'

let g:db_ui_save_location = '~/Consultas/sive/prueba.sql'

" prueba
" let g:db_ui_disable_mappings = 1

" autocmd FileType dbui nmap <buffer> S <Plug>(DBUI_SelectLineVsplit)
" autocmd FileType dbui nmap <buffer> d <Plug>(DBUI_DeleteLine)
" autocmd FileType dbui nmap <buffer> o <Plug>(DBUI_SelectLine)
" autocmd FileType dbui nmap <buffer> r <Plug>(DBUI_Redraw)
" autocmd FileType dbui nmap <buffer> a <Plug>(DBUI_AddConnection)
" autocmd FileType dbui nmap <buffer> H <Plug>(DBUI_ToggleDetails)

" autocmd FileType dbui nmap <buffer> v <Plug>(DBUI_SaveQuery)
" autocmd FileType dbui nmap <buffer> e <Plug>(DBUI_EditBindParameters)

" autocmd FileType dbui nmap <buffer> v <Plug>(DBUI_JumpToForeignKey)
"
" ACTIVATE :DBUI
"
let g:db_ui_table_helpers = {
      \ 'postgresql': {
      \    'Count': 'select count(*) from "{table}"',
      \    'List': 'select * from "{table}" order by id desc limit 20'
      \   }
      \ }


" let g:DBUI_ExecuteQuery="<C-s>"

" Correr las consultas seleccionando el query y luego CC
vmap CC  <Plug>(DBUI_ExecuteQuery)
" Guardar la consulta query
vmap SS  <Plug>(DBUI_SaveQuery)

" Desactivando el guardado y ejecucion automatico
let g:db_ui_execute_on_save = 0


let g:NERDTreeGitStatusIndicatorMapCustom = {
              \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
