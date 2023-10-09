return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					-- 使用 nvim 内置lsp
					diagnostics = "nvim_lsp",
					-- 左侧让出 nvim-tree 的位置
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
			})
			-- 因为mac映射D-Commadn，不使用A-alt
			-- 1. 插入模式 2.按ctrl-v，3. alt-j，4，显示第三步的绑定 https://blog.csdn.net/weixin_33806509/article/details/93736750
			vim.keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>", {})
			vim.keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>", {})
		end,
	},
}
