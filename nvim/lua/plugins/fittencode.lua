return {
	"luozhiya/fittencode.nvim",
	event = "VeryLazy",
	config = function()
		-- use fitten login
		require("fittencode").setup()
	end,
}
