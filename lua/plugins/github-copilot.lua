return {
  'github/copilot.vim',
  config = function()
    -- Deshabilitar el mapeo predeterminado de la tecla TAB
    -- vim.g.copilot_no_tab_map = true
    
    -- Crear una función para aceptar sugerencias de Copilot con TAB
    vim.api.nvim_set_keymap("i", "<TAB>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })
    
    -- Evitar que la tecla TAB inserte tabulaciones cuando no haya sugerencias de Copilot
    vim.api.nvim_set_keymap("i", "<S-TAB>", 'copilot#Accept("<S-Tab>")', { silent = true, expr = true })
    
    -- Mapea la tecla TAB para moverse al siguiente lugar de tabulación cuando no haya sugerencias de Copilot
    vim.api.nvim_set_keymap("i", "<TAB>", 'pumvisible() ? "\\<C-n>" : copilot#Accept("\\<Tab>")', { silent = true, expr = true })
  end
}
