return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "typescript",
      "javascript",
      "json",
      "yaml",
      "html",
      "css",
      "scss",
      "tsx",
    }
  }
}
