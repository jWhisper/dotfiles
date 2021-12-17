require "core.global"
-- 全局设置
global:new()

require "core.settings"
require "core.keymap"
require "core.packerWrapper"
require "core.autocmd"

local function bootstrap()
    -- 设置通用配置
    settings:init()
    -- 加载插件管理器
    packerWrapper:load_packer()
    -- 设置自动命令
    autocmd.init()
    -- 设置快捷键
    keymap:init()

    local _ = require("modules.plugins")
    -- 初始化插件
    for _, fn in ipairs(global.repos) do
        dump(fn)
        fn()
    end
    packerWrapper:install()
end

bootstrap()
