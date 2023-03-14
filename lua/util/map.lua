local MappingUtil = {}

function MappingUtil.mapping(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- Mapping in normal mode
function MappingUtil.MappingNormal(shortcut, command)
    MappingUtil.mapping('n', shortcut, command)
end

-- Mapping in inserte mode
function MappingUtil.MappingInsert(shortcut, command)
    MappingUtil.mapping('i', shortcut, command)
end

-- Mapping all edit mode
function MappingUtil.MappingAllMode(shortcut, command)
    MappingUtil.MappingInsert(shortcut, command)
    MappingUtil.MappingNormal(shortcut, command)
end

return MappingUtil
