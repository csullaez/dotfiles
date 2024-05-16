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

" Resize window with shift + and shift -
nnoremap + <c-w>5>
nnoremap - <c-w>5<

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
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

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

  local cmp_status_ok, cmp = pcall(require, "cmp")
  if not cmp_status_ok then
    return
  end

  local snip_status_ok, luasnip = pcall(require, "luasnip")
  if not snip_status_ok then
    return
  end

  require("luasnip/loaders/from_vscode").lazy_load()

  local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
  end
  local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
  }
  cmp.setup({
  autoselect = true,
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        --require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        luasnip.lsp_expand(args.body) -- For `luasnip` users.
        --require('snippy').expand_snippet(args.body) -- For `snippy` users.
        --vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      --['<C-d>'] = cmp.mapping.scroll_docs(-4),
      --['<C-u>'] = cmp.mapping.scroll_docs(4),
      --['<C-Space>'] = cmp.mapping.complete(),
      --['<C-e>'] = cmp.mapping.abort(),
      ["<Tab>"] = cmp.mapping.select_prev_item(),
      ["<S-Tab>"] = cmp.mapping.select_next_item(),
      ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
      ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
      ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
      ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ["<C-e>"] = cmp.mapping {
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      },
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expandable() then
          luasnip.expand()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif check_backspace() then
          fallback()
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
    }),
    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
    },
    sources = {
      --{ name = 'tabnine' },
      { name = 'path' },
      { name = 'buffer' },
      { name = 'nvim_lsp' },
      { name = 'treesitter' },
      { name = 'luasnip' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'cmp_tabnine' }, -- For vsnip users.
      { name = 'ultisnips' }, -- For ultisnips users.
      { name = 'snippy' }, -- For snippy users.
    }, 
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
  -- Set up lspconfig.
  --local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --  capabilities = capabilities
  --}

local lspconfig = require'lspconfig'
lspconfig.tsserver.setup{}
local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        --...
        return vim_item
      end
    })
  }
}
EOF
