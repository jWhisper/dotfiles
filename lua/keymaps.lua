-- define common options
local opts = {
    noremap = true, -- non-recursive
    silent = true, -- do not show message
}

vim.g.mapleader = ","

-----------------
-- Normal mode --
-----------------

-- for nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- 上下滚动浏览
vim.keymap.set("n", "<C-j>", "4j", opts)
vim.keymap.set("n", "<C-k>", "4k", opts)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
vim.keymap.set("n", "<C-u>", "9k", opts)
vim.keymap.set("n", "<C-d>", "9j", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- 上下移动选中文本
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", opts)
