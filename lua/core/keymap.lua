-- 通用快捷键绑定

local keymap={}

local nopt = {noremap=true, silent=true}

local function map(mode, key, mkey, opt) 
    if opt == nil then opt = nopt end
    vim.api.nvim_set_keymap(mode, key, mkey, opt)
end

function keymap.map(mode, key, mkey, opt)
    map(mode, key, mkey, opt)
end

function keymap.init() 
    vim.g.mapleader = ","

    -- c-u 翻屏的时候少一点
    map("n", "<C-u>", "9k", nil)
    map("n", "<C-d>", "9j", nil)

    -- > < 持续缩进
    map("v", "<", "<gv", nil)
    map("v", ">", ">gv", nopt)

    -- 分屏相关, 移动
    map("n", "<C-h>", "<C-w>h", nopt)
    map("n", "<C-j>", "<C-w>j", nopt)
    map("n", "<C-k>", "<C-w>k", nopt)
    map("n", "<C-l>", "<C-w>l", nopt)
    map("n", "sv", ":vsp<CR>", nopt) -- 水平分屏 s: split
    map("n", "sh", ":sp<CR>", nopt)
    map("n", "sc", "<C-w>c", nopt) -- close current
    map("n", "so", "<C-w>o", nopt) -- close others

end

return keymap
