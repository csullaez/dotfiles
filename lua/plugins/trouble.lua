return {
  "folke/trouble.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons", 'folke/lsp-colors.nvim'},
  keys = { { "<leader><leader>t", "<cmd>Trouble diagnostics<cr>", desc = "Trouble diagnostics" } },
  config = true,
}
