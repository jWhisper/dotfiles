-- 全局变量
global = {}
local os_name = vim.loop.os_uname().sysname

-- 打印函数 dump("xxxx")
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

function _G.createDir(path)
    if vim.fn.isdirectory(path) ~= 1 then os.execute("mkdir -p " .. path) end
end

function global:new()
    self.is_mac = os_name == "Darwin"
    self.is_linux = os_name == "Linux"
    self.is_windows = os_name == "Windows_NT"
    self.vim_path = vim.fn.stdpath("config")
    local path_sep = self.is_windows and "\\" or "/"
    local home = self.is_windows and os.getenv("USERPROFILE") or
                     os.getenv("HOME")
    self.cache_dir = home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep
    createDir(self.cache_dir)
    self.modules_dir = self.vim_path .. path_sep .. "modules"
    self.home = home
    self.data_dir = string.format("%s/site/", vim.fn.stdpath("data"))
    self.repos= {}
    -- dump(self) -- .cache .config .local
    --
end

return global
