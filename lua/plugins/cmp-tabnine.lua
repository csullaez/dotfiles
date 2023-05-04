return {
	'tzachar/cmp-tabnine',
	build = './install.sh',
	dependencies = 'hrsh7th/nvim-cmp',
  event = "VeryLazy",
  config = function ()
    local tabnine = require('cmp_tabnine.config')
    tabnine.setup {
      max_lines = 1000,
      max_num_results = 20,
      sort = true,
      snippet_placeholder = '..',
    }
  end
}
