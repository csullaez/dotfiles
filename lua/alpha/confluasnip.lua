local ls = require("luasnip")
local types = require("luasnip.util.types")
local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt

local map = vim.keymap.set
local api = vim.api

local function command(name, rhs, opts)
 opts = opts or {}
 api.nvim_create_user_command(name, rhs, opts)
end
-- ls.filetype_extend()
-- require("luasnip").filetype_extend("typescript", { "javascript" })

ls.config.setup({
 history = true,
 update_events = "TextChanged,TextChangedI",
 region_check_events = "CursorMoved,CursorHold,InsertEnter",
 delete_check_events = "InsertLeave",
 ext_opts = {
  [types.choiceNode] = {
   active = {
    hl_mode = "combine",
    virt_text = { { "●", "Operator" } },
   },
  },
  [types.insertNode] = {
   active = {
    hl_mode = "combine",
    virt_text = { { "●", "Type" } },
   },
  },
 },
 enable_autosnippets = true,
 snip_env = {
  fmt = fmt,
  m = extras.match,
  t = ls.text_node,
  f = ls.function_node,
  c = ls.choice_node,
  d = ls.dynamic_node,
  i = ls.insert_node,
  l = extras.lamda,
  snippet = ls.snippet,
 },
})

command("LuaSnipEdit", function()
 require("luasnip.loaders.from_lua").edit_snippet_files()
end)

-- <c-l> is selecting within a list of options.
map({ "s", "i" }, "<c-l>", function()
 if ls.choice_active() then
  ls.change_choice(1)
 end
end)

map({ "s", "i" }, "<c-j>", function()
 if not ls.expand_or_jumpable() then
  return "<Tab>"
 end
 ls.expand_or_jump()
end, { expr = true })

-- <C-K> is easier to hit but swallows the digraph key
map({ "s", "i" }, "<c-b>", function()
 if not ls.jumpable(-1) then
  return "<S-Tab>"
 end
 ls.jump(-1)
end, { expr = true })

ls.filetype_extend("all", { "_" })
-- -- NOTE: the loader is called twice so it picks up the defaults first then my custom textmate snippets.
-- -- see: https://github.com/L3MON4D3/LuaSnip/issues/364
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/snippets" })
require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/snippets" })
require("luasnip.loaders.from_vscode").load({ paths = "./snippets" })

require("luasnip.loaders.from_lua").lazy_load()

ls.filetype_extend("typescriptreact", { "javascript", "typescript" })
ls.filetype_extend("dart", { "flutter" })
ls.filetype_extend("NeogitCommitMessage", { "gitcommit" })
