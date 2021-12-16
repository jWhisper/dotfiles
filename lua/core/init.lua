local fn, uv, api = vim.fn, vim.loop, vim.api
local packer = require("packer")
init={}

//检查插件管理
local function load_packer() 
    if not packer then
        api.nvim_command("packadd packer.nvim")
        packer = require("packer")
    end
end


function init.run()
    load_packer()
end

return init
