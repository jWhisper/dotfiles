local conf = require("modules.completion.config")
local completion = {
    {
        -- 语言安装插件, 太麻烦了，手动吧
        -- 'williamboman/nvim-lsp-installer',
    },
    {
        "neovim/nvim-lspconfig",
        -- after = {'williamboman/nvim-lsp-installer'},
        -- setup = conf.lspsetup,
        config = conf.lspconf,
    },
    {
        'hrsh7th/nvim-cmp', -- Autocompletion plugin,
        requires = {
            "neovim/nvim-lspconfig",
            'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer", --  {name='buffer'}
            "hrsh7th/cmp-path", --  {name='path'}
            "hrsh7th/cmp-cmdline", --  {name='cmdline'}

            -- 来源自己选择
            'L3MON4D3/LuaSnip'
            -- "hrsh7th/cmp-vsnip"
        },
        config = conf.cmpconf,
    },

    -- 代码片段来源插件
    {
        'L3MON4D3/LuaSnip', -- Snippets plugin
        config = conf.luasnip,
        -- requires = "rafamadriz/friendly-snippets"
    },
    {
        'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    },
    {
        "windwp/nvim-autopairs",
        after = "nvim-cmp",
        config = conf.autopairs,
    }
}

return completion
