return {
	"luozhiya/fittencode.nvim",
	-- event = "VeryLazy",
	cmd = "Fitten",
	config = function()
		-- use fitten login
		require("fittencode").setup()
	end,
}
