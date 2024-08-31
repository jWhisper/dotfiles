return {
	"mistricky/codesnap.nvim",
	build = "make",
	-- event = "VeryLazy",
	cond = function(plugin)
		-- :lua print(vim.loop.os_uname().sysname)
		return vim.loop.os_uname().sysname ~= "Windows_NT"
	end,
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
