-- https://bryankegley.me/posts/nvim-getting-started/
local conf = require("modules.tools.config")
local tools = {
    {
        "dstein64/vim-startuptime",
        opt = true, 
        cmd = "StartupTime"
    },
    {
        "nvim-lua/popup.nvim"
    },
    {
        "nvim-lua/plenary.nvim"
    },
    {
        "nvim-lua/telescope.nvim",
        config = conf.telconf
    },
    {
        "jremmen/vim-ripgrep"
    },
    --{
        -- 使用lsp的format
    --    "lukas-reineke/format.nvim",
    --    cmd = {"Format", "FormatWrite"},
    --    config = conf.format
    --},
    {
        'folke/which-key.nvim',
        opt=true,
        keys=";",
        config = function()
            require("which-key").setup{}
        end,
    },
    {
        "blackCauldron7/surround.nvim",
        opt=true,
        config = function()
            require"surround".setup {mappings_style = "surround"}
        end
    },
    {
        "tpope/vim-fugitive",
        opt = true,
        cmd = {"Git", "G"}
    }
}
return tools
