local config = {}

function config.telconf()
    vim.api.nvim_set_keymap('n', '<leader>f', ':lua require"telescope.builtin".live_grep()<CR>', { noremap=true, silent=true})
end

function config.format()
        require("format").setup {
        ["*"] = {
            {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
        },
        vim = {
            {
                cmd = {"luafmt -w replace"},
                start_pattern = "^lua << EOF$",
                end_pattern = "^EOF$"
            }
        },
        vimwiki = {
            {
                cmd = {"prettier -w --parser babel"},
                start_pattern = "^{{{javascript$",
                end_pattern = "^}}}$"
            }
        },
        lua = {
            {
                cmd = {
                    function(file)
                        return string.format("lua-format -i %s", file)
                    end
                }
            }
        },
        c = {
            {
                cmd = {
                    function(file)
                        return string.format("clang-format -i %s", file)
                    end
                }
            }
        },
        cpp = {
            {
                cmd = {
                    function(file)
                        return string.format("clang-format -i %s", file)
                    end
                }
            }
        },
        go = {{cmd = {"gofmt -w", "goimports -w"}, tempfile_postfix = ".tmp"}},
        python = {
            {cmd = {"python3 -m autopep8 --in-place --aggressive --aggressive"}}
        },
        sh = {
            {
                cmd = {
                    function(file)
                        return string.format("shfmt -w %s", file)
                    end
                }
            }
        },
        rust = {
            {
                cmd = {
                    function(file)
                        return string.format("rustfmt %s", file)
                    end
                }
            }
        },
        html = {{cmd = {"prettier -w"}}},
        javascript = {
            {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
        },
        json = {{cmd = {"prettier -w"}}},
        markdown = {
            {cmd = {"prettier -w"}}, {
                cmd = {"black"},
                start_pattern = "^```python$",
                end_pattern = "^```$",
                target = "current"
            }
        }
    }

    vim.cmd [[autocmd BufWritePost * FormatWrite]]
end

return config
