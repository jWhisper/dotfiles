local tools = {}
local use = require("packer").use

function tools.load_startup_time()
    use {
        "dstein64/vim-startuptime",
        opt = true, 
        cmd = "StartupTime"
    }
end

return tools
