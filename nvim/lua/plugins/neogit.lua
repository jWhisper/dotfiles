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
		{ "<leader>go", ":Neogit<CR>", desc = "Neogit open" },
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
	config = function()
		require("neogit").setup({
			integrations = {
				-- If enabled, use telescope for menu selection rather than vim.ui.select.
				-- Allows multi-select and some things that vim.ui.select doesn't.
				telescope = true,
				-- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `diffview`.
				-- The diffview integration enables the diff popup.
				--
				-- Requires you to have `sindrets/diffview.nvim` installed.
				diffview = true,
			},
		})
	end,
}
