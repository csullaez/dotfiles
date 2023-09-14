return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    {"SirVer/ultisnips", dependencies = { "mlaursen/vim-react-snippets" } },
    {"quangnguyen30192/cmp-nvim-ultisnips",
      config = function()
      require("cmp_nvim_ultisnips").setup{}
    end,
    },
  },
  event = "VeryLazy",
  config = function()
    require "alpha.completition"
  end,
}
