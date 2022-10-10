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

highlight Blamer guifg=lightgrey
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_relative_time = 1
" let g:gitp_blame_format = '     %{account} * %{ago}'
let g:blamer_date_format = '%d/%m/%y'
let g:blamer_template = '<committer-time>, (<author>) <summary>'

nmap <C-w>m <Plug>(git-messenger)
let g:git_messenger_no_default_mappings = v:true
let g:git_messenger_close_on_cursor_moved = v:false
let g:git_messenger_always_into_popup = v:true

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
