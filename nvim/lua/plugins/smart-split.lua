return {
	-- if you use tmux, remeber to copy config inti .tmux.conf
	-- detail: https://github.com/mrjones2014/smart-splits.nvim
	"mrjones2014/smart-splits.nvim",
	-- event = "VeryLazy", -- for tmux
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
		-- moving between splits can use for tmux too, very nice
		vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
		vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
		vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
		vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
		vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
		-- swapping buffers between windows
		vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
		vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
		vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
		vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
		vim.keymap.set("n", "<A-k>", function()
			smart_splits.resize_up(3)
		end, {})
		vim.keymap.set("n", "<A-j>", function()
			smart_splits.resize_down(3)
		end, {})
		vim.keymap.set("n", "<A-l>", function()
			smart_splits.resize_right(3)
		end, {})
		vim.keymap.set("n", "<A-h>", function()
			smart_splits.resize_left(3)
		end, {})
	end,
}
