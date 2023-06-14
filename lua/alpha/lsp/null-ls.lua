local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    -- null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.jq,
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.formatting.alejandra,
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.formatting.stylua,
  }
}

vim.keymap.set({ "n", "v" }, "CA", vim.lsp.buf.code_action, {desc = "LSP (null ls) Code actions"})
vim.keymap.set("n", "CF", function()
 return vim.lsp.buf.format { async = true }
end, {desc = "LSP (null ls) Format file"})
