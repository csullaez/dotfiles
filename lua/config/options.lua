-- Para cambiar el líder de teclas
vim.g.mapleader = ' '
vim.g.snippets = "luasnip"

local opt = vim.o
-- Set clipboard option
opt.clipboard = "unnamed"
-- Show matching brackets
opt.ma = true
-- Set encoding to UTF-8
opt.encoding = "UTF-8"
-- Set terminal title
opt.title = true
-- Use Neovim-specific features
-- opt.nocompatible = true
-- Show line numbers
vim.wo.number = true
-- Show relative line numbers
vim.wo.relativenumber = true
-- Set command line history size to 500
opt.history = 500
-- Enable mouse support
opt.mouse = "a"
-- Show cursor line
-- vim.wo.cursorline = true
-- Highlight the column at 150 characters
vim.wo.colorcolumn = "150"
-- Set tab width to 2 spaces
vim.opt.tabstop = 2
-- Set indentation width to 2 spaces
vim.opt.shiftwidth = 2
-- Set command line height to 2 lines
opt.cmdheight = 2
-- Set soft tab width to 2 spaces
vim.opt.softtabstop = 2
-- Set update time for CursorHold event to 300ms
opt.updatetime = 300
-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Keep buffers hidden when abandoned
opt.hidden = true
-- Ignore case when searching
opt.ignorecase = true
-- Use case-sensitive search if uppercase letter is present
opt.smartcase = true
-- Set spell check languages
vim.bo.spelllang = "en,es"
-- Use syntax-based folding
opt.foldmethod = "syntax"
-- Disable folding by default
-- opt.foldenable = false
-- Set folding level to 1
opt.foldlevel = 1
-- Set window split to below current window
opt.splitbelow = true
-- Set window split to right of current window
opt.splitright = true
-- Enable syntax highlighting
vim.cmd("syntax on")
-- Disable swap file
opt.swapfile = false
-- Disable backup
opt.backup = false
-- Disable write backup file
opt.writebackup = false
-- Automatically reload file if changes are detected
opt.autoread = true
-- Enable smart indentation
opt.smartindent = true
-- Disable mode display
opt.showmode = false
-- Set vertical scrolling offset to 10
opt.scrolloff = 10
-- Set backspace behavior
opt.backspace = "indent,eol,start"
-- Set colorscheme
opt.termguicolors = true
-- Set color depth to 256
--opt.t_Co = 256
-- Enable true color support for terminal
if vim.fn.has("termguicolors") == 1 then
  opt.termguicolors = true
end
vim.o.guifont = "Fira Code:h14"
-- vim.cmd("set guifont=Fira\\ Code:h14")
-- vim.cmd("set guifont=Victor\\ Mono:h12")
