local configs = {}

function configs.devicons()
    require'nvim-web-devicons'.setup {
     -- your personnal icons can go here (to override)
     -- you can specify color or cterm_color instead of specifying both of them
     -- DevIcon will be appended to `name`
    --override = {
    --    zsh = {
    --        icon = "",
    --        color = "#428850",
    --        cterm_color = "65",
    --        name = "Zsh"
    --    }
    --};
    default = true;
    }
end

function configs.ident_blankline()
    -- vim.opt.listchars:append("eol:↴")
    require("ident_blankline").setup{
        space_char_blankline = " ",
    }
end

function configs.edge()
    vim.cmd [[set background=dark]]
    vim.g.edge_style = "aura"
    vim.g.edge_enable_italic = 1
    vim.g.edge_disable_italic_comment = 1
    vim.g.edge_show_eob = 1
    vim.g.edge_better_performance = 1
    vim.g.edge_transparent_background = 1
end

function configs.catppuccin()
    require('catppuccin').setup({
        transparent_background = false,
        term_colors = true,
        styles = {
            comments = "italic",
            functions = "italic,bold",
            keywords = "italic",
            strings = "NONE",
            variables = "NONE"
        },
        integrations = {
            treesitter = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = "italic",
                    hints = "italic",
                    warnings = "italic",
                    information = "italic"
                },
                underlines = {
                    errors = "underline",
                    hints = "underline",
                    warnings = "underline",
                    information = "underline"
                }
            },
            lsp_trouble = true,
            lsp_saga = true,
            gitgutter = false,
            gitsigns = true,
            telescope = true,
            nvimtree = {enabled = true, show_root = true},
            which_key = true,
            indent_blankline = {enabled = true, colored_indent_levels = false},
            dashboard = true,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            bufferline = true,
            markdown = true,
            lightspeed = false,
            ts_rainbow = true,
            hop = true
        }
    })
end

return configs
