local conf = require("modules.editor.config")

local editor = {
    {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        -- cmd = {"NvimTreeToggle"},
        config = conf.nvim_tree,
    },
    {
        'akinsho/bufferline.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = conf.bufferline,
    },
    {
		"nvim-treesitter/nvim-treesitter",
		--commit = commit.nvim_treesitter,
		branch = vim.fn.has "nvim-0.6" == 1 and "master" or "0.5-compat",
		run = ":TSUpdate",
        config = conf.treesitter,
    }
}

return editor
