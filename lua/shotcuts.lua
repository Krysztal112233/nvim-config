-- This file is alive for setting shotcuts,also called mapping


local MappingUtil = require "util/map"

-- Save file
MappingUtil.MappingAllMode("<C-s>", ":w<cr>")

-- Redo/Undo edit
MappingUtil.MappingNormal("<C-z>", ":undo<cr>")
MappingUtil.MappingNormal("<ShiftCtrl-z>", ":redo<cr>")

-- Close window mapping
MappingUtil.MappingNormal("<C-w>", ":q<cr>")

-- Change windows mapping
MappingUtil.MappingNormal("<C-H>", "<C-W>h")
MappingUtil.MappingNormal("<C-J>", "<C-W>j")
MappingUtil.MappingNormal("<C-K>", "<C-W>k")
MappingUtil.MappingNormal("<C-L>", "<C-W>l")

-- Selece mode
MappingUtil.MappingNormal("<CS-s>", "gh<cr>")
