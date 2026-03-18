return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "nvimtools/none-ls.nvim" },
    { "nvimtools/none-ls-extras.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "WhoIsSethDaniel/mason-tool-installer.nvim" },
    { "hrsh7th/cmp-nvim-lsp" },
  },
  config = function()
    require("alpha.lsp.init") -- <- esto llama a tu init nuevo
  end,
}
