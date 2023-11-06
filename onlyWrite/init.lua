-- 专门用来写作的，不是用来写代码的配置
-- GUI
vim.opt.guifont = 'Fira Code:h18'

--encodeing
vim.opt.encoding='utf-8'
vim.opt.fileencoding='utf-8'

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a' -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true -- show absolute number
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = false -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:¦ ")
vim.opt.listchars:append("trail:·")

------------
---keymaps--
------------

vim.g.mapleader = ","

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------
-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

---------------------------------------------------------
---------------Function----------------------------------
---------------------------------------------------------

-- 计算中文英文单词个数
function wordCount()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)

    local cnLen = 0
    local enWordLen = 0

    for _, line in ipairs(lines) do
        local preIsLetter = false
        local i = 1       
        local len = #line

        while i <= len do     
            local curByte = string.byte(line, i)  
            local byteCount = 1                       
            if curByte > 239 then
                byteCount = 4  -- 4字节字符
                if preIsLetter then
                    enWordLen = enWordLen + 1
                end
                preIsLetter = false
            elseif curByte >= 223 then
                byteCount = 3  -- 3字节
                -- 判断是否中文 第一个字节是228-233，而且接下来两个字节都是 128-191
                if curByte >= 228 and curByte <= 233 and i+1 <= len and i+2 <= len then
                    local b2 = string.byte(line, i+1)
                    local b3 = string.byte(line, i+2)
                    if b2 >= 128 and b2 <= 191 and b3 >= 128 and b3 <= 191 then
                        cnLen = cnLen + 1
                    end
                end
                if preIsLetter then
                    enWordLen = enWordLen + 1
                end
                preIsLetter = false
            elseif curByte > 128 then
                byteCount = 2  -- 双字节字符
                if preIsLetter then
                    enWordLen = enWordLen + 1
                end
                preIsLetter = false
            elseif (curByte >= 65 and curByte <= 90) or (curByte >= 97 and curByte <= 122) then
                byteCount = 1 -- 单字符不过是字母
                if not preIsLetter then
                    preIsLetter = true
                end
                if i == len then
                    enWordLen = enWordLen + 1
                end
            else
                byteCount = 1  -- 单字节字符
                if preIsLetter then
                    enWordLen = enWordLen + 1
                end
                preIsLetter = false
            end

            i = i + byteCount
        end
    end
    local result = string.format("cn:%d en:%d",cnLen, enWordLen)
    return result
end


-------------------------------------------------------------


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        -- "folke/tokyonight.nvim",
        "olimorris/onedarkpro.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedarkpro").setup({
                colors = {
                    -- cursorline = "#FF0000" 
                },
                options = {cursorline = true}
            })
            vim.cmd([[colorscheme onedark]])
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    {
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
                sections = {
                    lualine_y = { wordCount, 'progress' },
                }
            })
		end,
	},
    {
        "folke/zen-mode.nvim", 
        opts = {
            window = {
                backdrop = 0.95,
                width = 0.8,
            }
        }
    },
    {
        "folke/twilight.nvim",
        opts = {}
    },
    {'ron89/thesaurus_query.vim'},
    {
        'reedes/vim-pencil',
    },
    {'reedes/vim-wordy'},
    {
        'easymotion/vim-easymotion',
        config = function()
            vim.keymap.set('n', '<Leader>h', '<Plug>(easymotion-linebackward)', opts)
            vim.keymap.set('n', '<Leader>j', '<Plug>(easymotion-j)', opts)
            vim.keymap.set('n', '<Leader>k', '<Plug>(easymotion-k)', opts)
            vim.keymap.set('n', '<Leader>l', '<Plug>(easymotion-lineforward)', opts)
        end,
    },
    {
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-tree").setup()
            vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<cr>', opts)
        end,
    },
})

