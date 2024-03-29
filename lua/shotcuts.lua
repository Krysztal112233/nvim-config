-- This file is alive for setting shotcuts,also called mapping
local MappingUtil = require "util/map"

vim.g.mapleader = " "

-- Save file
MappingUtil.allMap("<C-s>", "<cmd>w<cr>")

-- Redo/Undo edit
MappingUtil.nMap("<C-z>", "<cmd>undo<cr>")
MappingUtil.nMap("<ShiftCtrl-z>", "<cmd>redo<cr>")

-- Close window mapping
MappingUtil.nMap("<C-w>", "<cmd>q<cr>")

-- Change window mapping
MappingUtil.nMap("<C-H>", "<C-W>h")
MappingUtil.nMap("<C-J>", "<C-W>j")
MappingUtil.nMap("<C-K>", "<C-W>k")
MappingUtil.nMap("<C-L>", "<C-W>l")

-- 'w' start its means `window`
-- Change window size mapping
MappingUtil.nMap("<leader>wwu", "<cmd>vertical resize +5<cr>")
MappingUtil.nMap("<leader>wwd", "<cmd>vertical resize -5<cr>")
MappingUtil.nMap("<leader>whu", "<cmd>resize +5<cr>")
MappingUtil.nMap("<leader>whd", "<cmd>resize -5<cr>")

-- 'o' start its means `open`
-- Open tree window
MappingUtil.nMap("<leader>oe", "<cmd>NvimTreeOpen<cr>")

-- Selece mode
MappingUtil.nMap("<CS-s>", "gh<cr>")
