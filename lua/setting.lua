-- Enable UTF-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- Keep 8 empty line while using`jk` key
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Enable relative line number
vim.wo.number = true
vim.wo.relativenumber = true

-- Highlight cursor line
vim.wo.cursorline = true

-- Show left side sign column
vim.wo.signcolumn = "yes"

-- Add terminal gui colors
vim.opt.termguicolors = true
