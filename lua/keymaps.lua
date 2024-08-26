vim.g.mapleader = ","
vim.g.maplocalleader = ","

--"n"：普通模式（Normal mode）
--"i"：插入模式（Insert mode）
--"v"：视觉模式（Visual mode）
--"x"：选择模式（Select mode）
--"s"：选择模式（Select mode）
--"c"：命令行模式（Command-line mode）
--"o"：操作符等待模式（Operator-pending mode）
--"t"：终端模式（Terminal mode）

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>", { desc = "[Q]uit current window" })
vim.keymap.set("n", "<C-q>", "<cmd>:qall<CR>", { desc = "Quit all window" })
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save" })

vim.keymap.set("n", "<C-u>", "9k", { desc = "Move up 9 lines" })
vim.keymap.set("n", "<C-d>", "9j", { desc = "Move down 9 lines" })

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- swap the selected text line
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", { desc = "Swap with the previous line" })
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", { desc = "Swap with the next line" })
