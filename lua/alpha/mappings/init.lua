-- Mapa de teclado normal
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Mapa de teclado en modo inserción
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

-- Para ir al siguiente buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })

-- Para ir al buffer anterior
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Para evitar que se cierre la ventana cuando se cierra el buffer
vim.api.nvim_set_keymap('n', '<Leader>q', ':bp<bar>sp<bar>bn<bar>bd<CR>', { noremap = true, silent = true })

-- Navigation entre Buffers abiertos
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Redimensionar ventana con shift + y shift -
vim.api.nvim_set_keymap('n', '+', '<C-w>5>', { noremap = true })
vim.api.nvim_set_keymap('n', '-', '<C-w>5<', { noremap = true })

vim.api.nvim_set_keymap('v', '<c-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<c-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<c-v>', '<Esc>"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true, silent = true })
