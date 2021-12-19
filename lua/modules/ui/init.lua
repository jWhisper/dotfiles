local conf = require("modules.ui.configs")
local ui = {
    {
        'navarasu/onedark.nvim',
        -- 'shaunsingh/nord.nvim',

        config = function() 
            -- vim.g.onedark_style = "warm"
            -- require("onedark").setup{} 
            -- vim.cmd[[colorscheme nord]]
        end,

    },
    {
        "kyazdani42/nvim-web-devicons",
        -- config = conf.devicons,
    },

    -- 垂直线
    {
        "lukas-reineke/indent-blankline.nvim",
        config = conf.indent_blankline,
    }
}
return ui 
