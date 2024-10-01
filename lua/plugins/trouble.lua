-- Definición de los signos de diagnóstico
local signs = { Error = "🚫", Warn = "⚠️", Hint = "💡", Info = "🕰️" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Configuración de Trouble
return {
  "folke/trouble.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons", 'folke/lsp-colors.nvim'},
  keys = { { "<leader><leader>t", "<cmd>Trouble diagnostics<cr>", desc = "Trouble diagnostics" } },
  config = function()
    require("trouble").setup {
      -- Aquí puedes configurar el comportamiento de Trouble
      signs = {
        error = "🚫",
        warning = "⚠️",
        hint = "💡",
        information = "🕰️",
      },
      use_diagnostic_signs = true,  -- Esto habilita el uso de signos de diagnóstico
    }
  end,
}

