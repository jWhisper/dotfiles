nvim_tree = {}

function nvim_tree.loadPlugin()
    local use = require("packer").use        
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
end

return nvim_tree
