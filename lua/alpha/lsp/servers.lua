local lsp_attach = require("alpha.lsp.attach")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp_flags = {
  debounce_text_changes = 150,
}

local default = function()
  return {
    on_attach = lsp_attach,
    flags = lsp_flags,
    capabilities = capabilities,
  }
end


local inlay_hints = {
  includeInlayParameterNameHints = 'all',
  includeInlayParameterNameHintsWhenArgumentMatchesName = true,
  includeInlayFunctionParameterTypeHints = true,
  includeInlayVariableTypeHints = true,
  includeInlayPropertyDeclarationTypeHints = true,
  includeInlayFunctionLikeReturnTypeHints = true,
  includeInlayEnumMemberValueHints = true,
  includeInlayVariableTypeHintsWhenTypeMatchesName = true
}

return {
  ["emmet_ls"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "blade", "vue" },
    }
  end,
  ["html"] = default,
  ["jsonls"] = default,
  ["intelephense"] = default,
  ["lua_ls"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
          hint = {
            enable = true,
          }
        },
      },
    }
  end,
  ["ts_ls"] = function()
    return {
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        -- Deshabilitar el formato automático para tsserver
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.diagnosticProvider = false -- Desactiva el linting de tsserver
        -- Mantén la función de adjunto personalizada
        lsp_attach(client, bufnr)
      end,
      flags = lsp_flags,
      filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
      settings = {
        typescript = {
          inlayHints = inlay_hints,
        },
        javascript = {
          inlayHints = inlay_hints,
        },
      },
    }
  end
}
