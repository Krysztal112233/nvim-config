local MappingUtil = {}

function MappingUtil._mapping(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- Mapping in normal mode
function MappingUtil.nMap(shortcut, command)
    MappingUtil._mapping('n', shortcut, command)
end

-- Mapping in inserte mode
function MappingUtil.iMap(shortcut, command)
    MappingUtil._mapping('i', shortcut, command)
end

-- Mapping all edit mode
function MappingUtil.allMap(shortcut, command)
    MappingUtil.iMap(shortcut, command)
    MappingUtil.nMap(shortcut, command)
end

return MappingUtil
