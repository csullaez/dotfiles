return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  -- dependencies = {
    -- "nvim-tree/nvim-web-devicons",
  -- },
  keys = { { "<F3>", ":NvimTreeFindFileToggle<CR>" } },
  config = function()
    require("nvim-tree").setup {
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        exclude = { '.env' }
      },
    }
  end,
}
