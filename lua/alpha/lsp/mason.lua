local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local servers = require("alpha.lsp.servers")
local lspconfig = require("lspconfig")

mason.setup({
  ui = {
    icons = {
      package_installed = "✅",
      package_pending = "⏳",
      package_uninstalled = "⚠️",
    }
  }
})

local mason_servers = {}

-- TODO: can be improve checking the setup function to see if sets the cmd
for server, _ in pairs(servers) do
  local cmd = lspconfig[server].document_config.default_config.cmd[1]
  if vim.fn.executable(cmd) == 0 then
    table.insert(mason_servers, server)
  end
end

mason_lspconfig.setup({
  ensure_installed = mason_servers,
  automatic_installation = true,
  automatic_enable = false,
})

-- Configura mason-tool-installer después
require("mason-tool-installer").setup({
  ensure_installed = require("alpha.lsp.tools"),
})
