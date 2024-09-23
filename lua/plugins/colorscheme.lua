return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    --[[ require('oceanicnext').setup({
      options = {
      }
    }) ]]

    vim.cmd('colorscheme catppuccin')
  end,
}
