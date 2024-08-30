return {
	"mistricky/codesnap.nvim",
	build = "make",
	-- event = "VeryLazy",
	cmd = "CodeSnap",
	config = function()
		require("codesnap").setup({
			watermark = "",
			bg_theme = "summer",
			bg_y_padding = 5,
			bg_x_padding = 5,
		})
	end,
}
