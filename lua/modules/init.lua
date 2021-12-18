-- 注册插件列表
require("core.packerWrapper")

local function addPlugins(fn)
    table.insert(packerWrapper.repos, fn)
end

local e = require "modules.plugins.editor"
local t = require "modules.plugins.tools"

addPlugins(e.load_nvim_tree)
-- addPlugins(e.load_nvim_tree)
addPlugins(t.load_startup_time)

