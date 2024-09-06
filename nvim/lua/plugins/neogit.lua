return {
	"NeogitOrg/neogit",
	cmd = "Neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	keys = {
		{ "<leader>go", ":Neogit<CR>", desc = "Git open" },
		{
			"<leader>gc",
			":Neogit commit<CR>",
			desc = "Git commit",
		},
		{
			"<leader>gp",
			":Neogit push<CR>",
			desc = "Git push",
		},
		{
			"<leader>gl",
			":Neogit pull<CR>",
			desc = "Git pull",
		},
		{
			"<leader>gb",
			":Telescope git_branches<CR>",
			desc = "Git branch",
		},
	},
	config = true,
}
