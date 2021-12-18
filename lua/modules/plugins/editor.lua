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
end

return editor
