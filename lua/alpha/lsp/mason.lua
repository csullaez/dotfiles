-- lua/alpha/lsp/mason.lua
local ok_m, mason = pcall(require, "mason")
if not ok_m then return end
mason.setup({
  ui = {
    icons = {
      package_installed = "✅",
      package_pending = "⏳",
      package_uninstalled = "⚠️",
    }
  }
})

local ok_ml, mlsp = pcall(require, "mason-lspconfig")
if ok_ml then
  -- instala los servers que realmente usas
  mlsp.setup({
    ensure_installed = { "lua_ls", "ts_ls" },
    automatic_installation = true,
    -- nada de handlers aquí
  })
end

-- Herramientas adicionales (formatters/linters)
pcall(function()
  require("mason-tool-installer").setup({
    ensure_installed = require("alpha.lsp.tools"),
  })
end)
