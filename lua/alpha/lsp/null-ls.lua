-- lua/alpha/lsp/null-ls.lua
local ok, null_ls = pcall(require, "null-ls")
if not ok then return end

-- 👇 nuevos require desde none-ls-extras
local eslint_d_diag = require("none-ls.diagnostics.eslint_d")
local eslint_d_actions = require("none-ls.code_actions.eslint_d")

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,

    -- formateo (usa el binario local si existe)
    null_ls.builtins.formatting.prettierd.with({
      prefer_local = "node_modules/.bin",
    }),

    -- 👇 diagnósticos y acciones de ESLint vía extras
    eslint_d_diag.with({
      prefer_local = "node_modules/.bin",
    }),
    eslint_d_actions.with({
      prefer_local = "node_modules/.bin",
    }),
  },
})

