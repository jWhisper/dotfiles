-- only for install stylua and black
return {
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = { "stylua", "black", "vale"},
				automatic_installation = false,
				-- Sources found installed in mason will automatically be setup for null-ls.
				automatic_setup = true,
			})
		end,
	},
}
