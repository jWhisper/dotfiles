return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		require("bufferline").setup()
		-- 因为mac映射D-Commadn，不使用A-alt
		-- 1. 插入模式 2.按ctrl-v，3. alt-j，4，显示第三步的绑定 https://blog.csdn.net/weixin_33806509/article/details/93736750
		vim.keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>", {})
		vim.keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>", {})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bo",
			":BufferLineCloseOthers<CR>",
			{ noremap = true, silent = true, desc = "close all buffer, [O]nly one" }
		)
		for i = 1, 3 do
			vim.api.nvim_set_keymap(
				"n",
				"<leader>b" .. i,
				":BufferLineGoToBuffer " .. i .. "<CR>",
				{ noremap = true, silent = true, desc = "[M]ove to Buffer " .. i }
			)
		end
	end,
}
