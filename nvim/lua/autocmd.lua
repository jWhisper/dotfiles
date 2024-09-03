-- install im-select
-- vim.cmd([[
--     augroup im-select
--       autocmd!
--       set timeoutlen=0
--       autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC
--     augroup end
-- ]])
--

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
	pattern = { "*" },
	callback = function()
		vim.api.nvim_exec2('silent! normal! g`"zv', {})
	end,
})
