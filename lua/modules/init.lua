-- 注册插件列表
require("core.packerWrapper")

local function addPlugins(fn)
    table.insert(packerWrapper.repos, fn)
end

local e = require "modules.plugins.editor"
addPlugins(e.load_nvim_tree)

