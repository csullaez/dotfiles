local telescope_mapper = require "alpha.telescope.mappings"

local filetype_attach = setmetatable({}, {
  __index = function()
    return function() end
  end,
})

return function(client, bufnr)
  local filetype = vim.bo[bufnr].filetype
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

  -- Opciones comunes para keymaps
  local opts = { buffer = bufnr, desc = "" }

  -- Funciones LSP
  local function buf_set_keymap(mode, lhs, rhs, desc)
    opts.desc = desc -- Establece la descripción por cada keymap
    vim.keymap.set(mode, lhs, rhs, opts)
  end

  -- Mapeos generales de LSP
  buf_set_keymap("n", "K", vim.lsp.buf.hover, "LSP Help information of symbol under the cursor")
  buf_set_keymap("n", "CR", vim.lsp.buf.rename, "LSP Rename symbol under cursor")
  buf_set_keymap("i", "<C-h>", vim.lsp.buf.signature_help, "LSP Signature help")
  buf_set_keymap("n", "<leader>vo", ":LspRestart<cr>", "LSP Restart Server")
  buf_set_keymap("n", "CF", function() vim.lsp.buf.format { async = true } end, "LSP Format file")
  buf_set_keymap({ "n", "v" }, "CA", function()
    vim.lsp.buf.code_action()
  end, "LSP Code actions")

  -- Mapas de Telescope para LSP
  telescope_mapper("gr", "lsp_references", { buffer = bufnr, desc = "LSP References of symbol under cursor" })
  telescope_mapper("<leader>vb", "find_symbol", { buffer = bufnr, desc = "LSP Find symbol in project" })
  telescope_mapper("<leader>pd", "lsp_document_symbols", { buffer = bufnr, desc = "LSP Document symbols" })
  telescope_mapper("gd", "lsp_definitions", { buffer = bufnr, desc = "LSP Go to definition" })
  telescope_mapper("gi", "lsp_implementations", { buffer = bufnr, desc = "LSP Go to implementation" })

  -- Activar inlay hints si el LSP lo soporta
  if client.server_capabilities.inlayHintProvider then
    vim.api.nvim_buf_call(bufnr, function()
      vim.lsp.inlay_hint.enable(true)
    end)
  end

  -- Llama a funciones específicas por tipo de archivo
  filetype_attach[filetype](client, bufnr)
end
