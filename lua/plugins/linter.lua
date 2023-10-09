return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "markdownlint" },
            python = {"pylint"},
		}
        vim.cmd([[ 
            augroup LintAutogroup
                autocmd!
                autocmd BufWritePost * lua require('lint').try_lint()
            augroup end 
        ]])
	end,
}
