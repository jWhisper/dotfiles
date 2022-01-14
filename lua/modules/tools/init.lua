-- https://bryankegley.me/posts/nvim-getting-started/
local conf = require("modules.tools.config")
local tools = {
    {
        "dstein64/vim-startuptime",
        opt = true, 
        cmd = "StartupTime"
    },
    {
        'rmagatti/auto-session',
        config=function()
            require('auto-session').setup {
                log_level = 'info',
                auto_session_enable_last_session=true,
                auto_session_enabled = true,
                auto_save_enabled = true,
                auto_restore_enabled = false,
                auto_session_suppress_dirs = nil
            }
        end
    },
    {
        'akinsho/toggleterm.nvim',
        config = conf.termconf
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
