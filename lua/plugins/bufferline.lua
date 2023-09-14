return {
  "akinsho/bufferline.nvim",
  prority = 9999,
  config = function()
    require('bufferline').setup {
      options = {
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        max_name_length = 25,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 20,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        indicator = {
          style = 'underline',
        },
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          if context.buffer:current() then
            return '('..count..')'
          end
          return "("..count..")"
        end,
        -- separator_style = 'slope',
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 100,
          reveal = {'close'}
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true
          }
        },
        highlights = {
          fill = {
            bg = {
              attribute = "fg",
              highlight = "Pmenu"
            }
          }
        }
      },
    }
  end,
}
