return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'ggandor/leap.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
end)
