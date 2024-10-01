local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local compare = require("cmp.config.compare")
-- local lspconfig = require('lspconfig')

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/lua/alpha/snippets" } })

-- lspconfig.ts_ls.setup {}

local kind_icons = {
  Text = "🧷",
  Method = "🗂️",
  Function = "📐",
  Constructor = "",
  Field = "🏷️",
  Variable = "📊",
  Class = "🧾",
  Interface = "📚",
  Module = "📦",
  Property = "🏠",
  Unit = "📏",
  Value = "📈",
  Enum = "🔡",
  Keyword = "🔑",
  Snippet = "✂️",
  Color = "🎨",
  File = "📄",
  Reference = "🔗",
  Folder = "📁",
  EnumMember = "🔣",
  Constant = "📍",
  Struct = "🏗️",
  Event = "",
  Operator = "",
  TypeParameter = "",
  cmp_tabnine = "",
}

local M = {}

function M.setup()
  cmp.setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    completion = {
      completeopt = "menu,menuone,noselect"
    },
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-j>"] = cmp.mapping(function(fallback)
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.choice_active() then
          luasnip.change_choice(1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-k>"] = cmp.mapping.select_prev_item(), -- ["<S-Tab>"]
      ["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.insert,
        select = true,
      },
      ["<C-Space>"] = cmp.mapping.complete(),
    },
    sources = {
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "path" },
      { name = 'cmp_tabnine' },
      { name = "nvim_lua" },
      { name = "nvim_lsp_signature_help" },
      { name = "buffer" },
    },

    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },

    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        if entry.source.name == "cmp_tabnine" then
          vim_item.kind = "🪄"
        end
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          -- luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
          cmp_tabnine = "[Tabnine]",
          ["vim-dadbod-completion"] = "[DB]",
        })[entry.source.name]
        return vim_item
      end,
    },

    sorting = {
      priority_weight = 2,
      comparators = {
        compare.offset,
        compare.exact,
        compare.score,
        compare.kind,
        compare.sort_text,
        compare.length,
        compare.order,
      },
    },

    experimental = {
      ghost_text = false,
    },
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
      { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = "buffer" },
    }),
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = "buffer" },
    },
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = "path" },
    }, {
      { name = "cmdline" },
    }),
  })

  cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
    sources = cmp.config.sources({
      { name = "vim-dadbod-completion" },
    }, {
      { name = "buffer" },
    }),
  })

  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
end

return M
