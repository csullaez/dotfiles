"Para comentar con CTRL+\
map <C-\> <Plug>NERDCommenterInvert
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1

"navigation entre Buffers abiertos
nnoremap <C-h> h
nnoremap <C-j> j
nnoremap <C-k> k
nnoremap <C-l> l


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


nnoremap <silent> <C-d> :call comfortable_motion#flick(10)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-10)<CR>
let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 0.0

lua <<EOF
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

require('bufferline').setup {
  options = {
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',

    max_name_length = 25,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 20,
    diagnostics = "coc",
    diagnostics_update_in_insert = false,
    indicator = {
      style = 'underline',
    },
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      if context.buffer:current() then
        return '('..count..')'
      end
      return "("..count..")"
    end,
    separator_style = 'padded_slant',
    always_show_bufferline = true,
    hover = {
      enabled = true,
      delay = 100,
      reveal = {'close'}
    },
    offsets = {
     {
        filetype = "coc-explorer",
        text = "File Explorer",
        text_align = "center",
        separator = true
     }
    },
highlights = {
        fill = {
            bg = {
                attribute = "fg",
                highlight = "Pmenu"
            }
        }
    }
   },
  }
EOF
