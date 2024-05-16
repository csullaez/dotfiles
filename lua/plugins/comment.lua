return {
  "numToStr/Comment.nvim",
  keys = { { "<C-\\>", desc = "Comment current line" }, { "<C-\\>", mode = "v", desc = "Comment selected text" } },
  config = function ()
    require("Comment").setup ({
      toggler = {
        ---Line-comment toggle keymap
        line = "<C-\\>",
        ---Block-comment toggle keymap
        -- block = '<C-\\>',
      },
      opleader = {
        ---Line-comment keymap
        -- line = 'gc',
        ---Block-comment keymap
        block = '<C-\\>',
      },
    })
  end
}
