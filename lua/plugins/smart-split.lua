return {
	-- if you use tmux, remeber to copy config inti .tmux.conf
	-- detail: https://github.com/mrjones2014/smart-splits.nvim
	"mrjones2014/smart-splits.nvim",
	event = "VeryLazy",
	config = function()
		local smart_splits = require("smart-splits")
		smart_splits.setup({
			resize_mode = {
				silent = true,
				hooks = {
					on_enter = function()
						vim.notify("Entering resize mode")
					end,
					on_leave = function()
						vim.notify("Exiting resize mode, bye")
					end,
				},
			},
		})
		vim.keymap.set("n", "<A-k>", function()
			smart_splits.resize_up(5)
		end, {})
		vim.keymap.set("n", "<A-j>", function()
			smart_splits.resize_down(5)
		end, {})
		vim.keymap.set("n", "<A-l>", function()
			smart_splits.resize_right(5)
		end, {})
		vim.keymap.set("n", "<A-h>", function()
			smart_splits.resize_left(5)
		end, {})
	end,
}
