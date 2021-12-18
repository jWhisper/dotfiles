local editor = {}
local use = require("packer").use        

function editor.load_nvim_tree()
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    vim.api.nvim_set_keymap('n', '<F2><CR>', ':NvimTreeToggle', { noremap = true, silent = true })
end

function editor.load_nvim_treesitter()
    use {
		"nvim-treesitter/nvim-treesitter",
		--commit = commit.nvim_treesitter,
		branch = vim.fn.has "nvim-0.6" == 1 and "master" or "0.5-compat",
		-- run = ":TSUpdate",
    }
end

return editor
