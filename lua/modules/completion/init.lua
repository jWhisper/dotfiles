local conf = require("modules.completion.config")
local completion = {
    {
        "neovim/nvim-lspconfig",
        -- setup = conf.lspsetup,
        -- config = conf.lspconf,
    },
    {
        'hrsh7th/nvim-cmp', -- Autocompletion plugin,
        requires = {
            "neovim/nvim-lspconfig",
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip'
        },
        config = conf.cmpconf,
    },
    {
        'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    },
    {
        'L3MON4D3/LuaSnip' -- Snippets plugin
    },
    {
        'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    }
}

return completion
