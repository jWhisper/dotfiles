-- 注册插件列表
require("core.global")

local function addPlugins(fn)
    table.insert(global.repos, fn)
end

require "modules.plugins.vim_go"
addPlugins(vim_go.loadPlugin)

require "modules.plugins.nvim_tree"
addPlugins(nvim_tree.loadPlugin)
