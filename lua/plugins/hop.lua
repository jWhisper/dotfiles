return {
	{
        'smoka7/hop.nvim',
        version = "*",
        config = function()
            local hop = require('hop')
            local directions = require('hop.hint').HintDirection
            require('hop').setup({
                keys = 'etovxqpdygfblzhckisuran;',
                vim.keymap.set('n', '<leader><leader>f', function()
                      hop.hint_char1({})
                end, {remap=true, desc="jump to a char"}),
                vim.keymap.set('n', '<leader><leader>w', function()
                      hop.hint_char1({ direction = directions.AFTER_CURSOR})
                end, {remap=true, desc="jump forward"}),
                vim.keymap.set('n', '<leader><leader>b', function()
                      hop.hint_char1({ direction = directions.BEFORE_CURSOR})
                end, {remap=true, desc="jump backwards"}),
                vim.keymap.set('n', '<leader><leader>j', function()
                      hop.hint_lines_skip_whitespace({ direction = directions.AFTER_CURSOR})
                end, {remap=true, desc="jump forward line"}),
                vim.keymap.set('n', '<leader><leader>k', function()
                      hop.hint_lines_skip_whitespace({ direction = directions.BEFORE_CURSOR })
                end, {remap=true, desc="jump backwords line"})
                })
        end,
    }
}
