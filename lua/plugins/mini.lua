return {
	"echasnovski/mini.nvim",
	version = "*",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("mini.starter").setup()

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

		require("mini.tabline").setup({
			format = function(buf_id, label)
				local suffix = vim.bo[buf_id].modified and "+ " or ""
				return MiniTabline.default_format(buf_id, label) .. suffix
			end,
		})

		require("mini.statusline").setup(
			use_icons = vim.g.have_nerd_font,
			section_location = function()
			return "%2l:%-2v"
			-- local time = os.date("%H:%M")
			-- return string.format("%s %s", line_col, time)
		end
		)

		-- see details: https://github.com/echasnovski/mini.nvim
	end,
}
