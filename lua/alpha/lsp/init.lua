-- LSP configuration

-- install servers and tools
require "alpha.lsp.mason"

local servers = require "alpha.lsp.servers"

for server, setup in pairs(servers) do
  vim.lsp.config(server, setup())
end

vim.lsp.enable(vim.tbl_keys(servers))

require "alpha.lsp.null-ls"
