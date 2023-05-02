return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  -- dependencies = {
    -- "nvim-tree/nvim-web-devicons",
  -- },
  keys = { { "<F3>", ":NvimTreeToggle<CR>" } },
  config = function()
    require("nvim-tree").setup {}
  end,
}
