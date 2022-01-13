local conf = require("modules.lang.config")
local lang = {
    {
        "fatih/vim-go",
        opt=true,
        -- 没什么用, 就不启动了
        ft = "go",
        run = ":GoInstallBinaries",
        config = conf.lang_go
    }
}

return lang
