return {
	"catppuccin/nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		vim.cmd.colorscheme("catppuccin-mocha")
		vim.cmd.hi("Comment gui=none")
	end,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			term_colors = true,
			integrations = {
				-- aerial = true,
				diffview = true,
				mini = {
					enabled = true,
					indentscope_color = "sky",
				},
				dropbar = {
					enabled = true,
					color_mode = true,
				},
				flash = true,
				gitsigns = true,
				neogit = true,
				noice = true,
				overseer = true,
				telescope = {
					enabled = true,
					-- style = "nvchad",
				},
				lsp_trouble = true,
				nvimtree = false,
				neotree = true,
				which_key = true,
				treesitter = true,
				notify = true,
			},
			highlight_overrides = {
				mocha = function(mocha)
					return {
						CursorLineNr = { fg = mocha.yellow },
					}
				end,
			},
		})
	end,
}
