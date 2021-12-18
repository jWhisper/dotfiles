-- 注册插件列表
-- https://github.com/wbthomason/packer.nvim#custom-initialization
require("core.packerWrapper")

local function addPlugins(useconf)
    table.insert(packerWrapper.repos, useconf)
end

local c = require "modules.completion"
local l = require "modules.lang"
local e = require "modules.editor"
local u = require "modules.ui"
local t = require "modules.tools"

-- tmp = (vim.tbl_extend("keep", c, l, e, u, t))
--dump(tmp)

for _, conf in ipairs(c) do
    addPlugins(conf)
end
for _, conf in ipairs(l) do
    addPlugins(conf)
end
for _, conf in ipairs(e) do
    addPlugins(conf)
end
for _, conf in ipairs(u) do
    addPlugins(conf)
end
for _, conf in ipairs(t) do
    addPlugins(conf)
end
