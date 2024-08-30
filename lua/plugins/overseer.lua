return {
	-- detail: https://github.com/stevearc/overseer.nvim/blob/master/doc/tutorials.md#run-a-file-on-save
	"stevearc/overseer.nvim",
	opts = {},
	event = "VeryLazy",
	config = function()
		require("overseer").setup({
			templates = { "builtin", "user.run_script" },
		})
		vim.api.nvim_create_user_command("WatchRun", function()
			local overseer = require("overseer")
			overseer.run_template({ name = "run script" }, function(task)
				if task then
					task:add_component({ "restart_on_save", paths = { vim.fn.expand("%:p") } })
					local main_win = vim.api.nvim_get_current_win()
					overseer.run_action(task, "open vsplit")
					vim.api.nvim_set_current_win(main_win)
				else
					vim.notify("WatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
				end
			end)
		end, {})
		vim.keymap.set(
			"n",
			"<leader>cr",
			":WatchRun<cr>",
			{ noremap = true, silent = true, desc = "WatchRun with Overseer" }
		)
	end,
}
