local fn, uv, api = vim.fn, vim.loop, vim.api
local packer = nil
require "core.settings"
require "core.keymap"
require "core.global"
init={}

-- 检查插件管理
local function load_packer() 
    if not packer then
        api.nvim_command("packadd packer.nvim")
        packer = require("packer")
    end
end


function init.run()
    load_packer()
    print(global)
    settings:init()
    keymap:init()
end

return init
