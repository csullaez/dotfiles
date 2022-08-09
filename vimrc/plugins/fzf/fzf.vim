"Para Buscar con AG
map <S-f> :Ag<CR>

let g:mapleader = " "
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>ga :CocCommand fzf-preview.GitActions<CR>
nnoremap <Leader>bh :CocCommand fzf-preview.ProjectMruFiles<CR>
nnoremap <C-p> :CocCommand fzf-preview.ProjectFiles<CR>


" Use vim-devicons
let g:fzf_preview_use_dev_icons = 0
" Limit of the number of files to be saved by mru
let g:fzf_preview_mru_limit = 1000
" Cache directory for mru and mrw
let g:fzf_preview_cache_directory = expand('~/.cache/vim/fzf_preview')
" Specify the color of fzf
let g:fzf_preview_fzf_color_option = ''

" let $BAT_THEME = 'codedark'
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'OneHalfDark'
