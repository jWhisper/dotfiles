return {
	"akinsho/bufferline.nvim",
	version = "*",
	after = "catppuccin",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		local ok, catppuccin_bufferline = pcall(require, "catppuccin.groups.integrations.bufferline")
		local highlights = nil

		if ok and catppuccin_bufferline then
			highlights = catppuccin_bufferline.get()
		end
		require("bufferline").setup({
			highlights = highlights,
		})
		-- 因为mac映射D-Commadn，不使用A-alt
		-- 1. 插入模式 2.按ctrl-v，3. alt-j，4，显示第三步的绑定 https://blog.csdn.net/weixin_33806509/article/details/93736750
		vim.keymap.set("n", "gh", ":BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
		vim.keymap.set("n", "gl", ":BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bo",
			":BufferLineCloseOthers<CR>",
			{ noremap = true, silent = true, desc = "close other buffer, [O]nly current" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bc",
			":BufferLinePickClose<CR>",
			{ noremap = true, silent = true, desc = "[C]lose buffer+p" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bm",
			":BufferLinePick<CR>",
			{ noremap = true, silent = true, desc = "[M]ove to buffer+p" }
		)
	end,
}
