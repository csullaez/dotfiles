" Conexion a base de datos
 
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('tpope/vim-dadbod')
  call packager#add('kristijanhusak/vim-dadbod-ui')
endfunction

let g:dbs = {
\  'seprecdb': 'postgres://postgres:postgres@localhost:5432/seprecdb',
\  'seprec_produccion': 'postgres://postgres:postgres@10.101.27.69:5432/seprec_produccion'
\ }
 
let g:db_ui_auto_execute_table_helpers = 1
 
let g:db_ui_icons = {
      \ 'expanded': {
      \    'db': '▾ ﬘',
      \    'buffers': '▾ ⚡️',
      \   'saved_queries': '▾ 🍀',
      \   'schemas': '▾ 🌧',
      \   'schema': '▾ 💦',
      \   'tables': '▾ 藺',
      \   'table': '▾ 💎',
      \ },
      \ 'collapsed': {
      \   'db': '▸ ﬘',
      \   'buffers': '▸ ⚡️',
      \   'saved_queries': '▸ ☘️',
      \   'schemas': '▸ ☁️',
      \   'schema': '▸ 💧',
      \   'tables': '▸ 藺',
      \   'table': '▸ 💎',
      \ },
      \ 'saved_query': '',
      \ 'new_query': '💫',
      \ 'tables': '離',
      \ 'buffers': ' ⭐️',
      \ 'add_connection': '',
      \ 'connection_ok': '✓',
      \ 'connection_error': '✕',
      \ }
 
 
let g:db_ui_winwidth = 40
 
let g:db_ui_default_query = 'select * from "{table}" limit 10'
 
let g:db_ui_save_location = '~/Consultas/seprec/prueba.sql'
 
let g:db_ui_tmp_query_location = '~/Consultas'

" ACTIVATE :DBUI
let g:db_ui_table_helpers = {
      \ 'postgresql': {
      \    'Count': 'select count(*) from "{table}"',
      \    'List': 'select * from "{table}" order by id desc limit 20'
      \   }
      \ }
 
 
" let g:DBUI_ExecuteQuery="<C-s>"
 
" Guardar la consulta query
vmap SS  <Plug>(DBUI_SaveQuery)
 
" Desactivando el guardado y ejecucion automatico
let g:db_ui_execute_on_save = 0

let g:db_ui_auto_execute_table_helpers = 1

" Correr las consultas seleccionando el query y luego CC
vmap <C-o> <Plug>(DBUI_ExecuteQuery)
