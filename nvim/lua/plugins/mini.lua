return {
	"echasnovski/mini.nvim",
	version = "*",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		-- require("mini.starter").setup()

		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		require("mini.pairs").setup()

		require("mini.git").setup()

		require("mini.diff").setup()

		-- use bufferline
		-- require("mini.tabline").setup()

		require("mini.statusline").setup({ use_icons = vim.g.have_nerd_font })

		-- see details: https://github.com/echasnovski/mini.nvim
	end,
}
