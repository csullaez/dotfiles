return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<C-\\>", desc = "Comment current line" },
    { "<C-\\>", mode = "v", desc = "Comment selected text" }
  },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("Comment").setup({
      toggler = {
        line = "<C-\\>",
      },
      opleader = {
        block = '<C-\\>',
      },
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
  end,
}
