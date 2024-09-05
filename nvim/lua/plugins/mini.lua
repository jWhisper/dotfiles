return {
	"echasnovski/mini.nvim",
	version = false,
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("mini.sessions").setup()

		local starter = require("mini.starter")
		starter.setup({
			items = {
				-- Use this if you set up 'mini.sessions'
				starter.sections.sessions(5, true),
				starter.sections.recent_files(10, false),

				{ action = "Telescope project", name = "Projects", section = "Telescope" },
				{ action = "Telescope command_history", name = "Command history", section = "Telescope" },
				{ action = "Telescope find_files", name = "Files", section = "Telescope" },
				{ action = "Telescope help_tags", name = "Help tags", section = "Telescope" },
				{ action = "Telescope live_grep", name = "Live grep", section = "Telescope" },
				{ action = "Telescope oldfiles", name = "Old files", section = "Telescope" },

				starter.sections.builtin_actions(),
			},
		})

		-- require("mini.animate").setup()

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

		-- require("mini.pairs").setup()

		-- require("mini.git").setup()
		require("mini.indentscope").setup()

		-- require("mini.diff").setup()

		-- use bufferline
		-- require("mini.tabline").setup()

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- see details: https://github.com/echasnovski/mini.nvim
	end,
}
