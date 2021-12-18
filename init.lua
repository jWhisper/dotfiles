require "core.global"
-- 全局设置
global:new()

set=require "core.settings"
km=require "core.keymap"
au=require "core.autocmd"
require "core.packerWrapper"

local function bootstrap()
    -- 设置通用配置
    set:init()
    -- 设置自动命令
    au.init()
    -- 设置快捷键
    km:init()
    -- 加载插件管理器
    p = packerWrapper:load_packer()

    local _ = require("modules.init")
    p:install()
end

bootstrap()
