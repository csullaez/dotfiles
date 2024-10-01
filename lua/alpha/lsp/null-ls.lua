local null_ls = require("null-ls")

null_ls.setup {
  sources = {
    null_ls.builtins.code_actions.gitsigns, -- usa gitsigns
    null_ls.builtins.formatting.prettierd,  -- usa prettierd
    null_ls.builtins.diagnostics.eslint_d,  -- usa eslint_d
    null_ls.builtins.code_actions.eslint_d,
  },
}
