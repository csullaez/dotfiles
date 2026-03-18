return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = { { "<leader><leader>t", "<cmd>Trouble diagnostics<cr>", desc = "Trouble diagnostics" } },
  config = function()
    require("trouble").setup({
      signs = {
        error = "🚫",
        warning = "⚠️",
        hint = "💡",
        information = "🕰️",
      },
    })
  end,
}
