return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    --[[ require('oceanicnext').setup({
      options = {
      }
    }) ]]

    vim.cmd('colorscheme onedark_vivid')
  end,
}
