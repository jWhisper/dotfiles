return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	optional = true,
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Projects",
						group = "DiagnosticHint",
						action = "Telescope project",
						key = "p",
					},
					{
						desc = "Quit",
						icon = " ",
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
						key = "q",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
