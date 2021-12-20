local conf = require("modules.lang.config")
local lang = {
    {
        "fatih/vim-go",
        --opt=true,
        ft = {'go', 'GO', "Go"},
        -- cmd = "VIMGOEnable",
        run = ":GoInstallBinaries",
        config = conf.lang_go
    }
}

return lang
