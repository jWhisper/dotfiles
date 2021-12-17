local data_dir = require("core.global").data_dir
packerWrapper = {}

function packerWrapper.load_packer() 
    local package_root = data_dir .. "pack/"
    local install_path = package_root .. "packer/start/packer.nvim"
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
        vim.cmd "packadd packer.nvim"
    end
    packer = require("packer")

    local _, packer = pcall(require, "packer")
    packer.init {
        package_root = package_root,
        compile_path = data_dir .. "packer_compiled.lua",
        log = { level = "debug" },
        git = {
            clone_timeout = 300,
            subcommands = {
                -- this is more efficient than what Packer is using
                fetch = "fetch --no-tags --no-recurse-submodules --update-shallow --progress",
            },
        },
        max_jobs = 50,
        display = {
            open_fn = function()
                return require("packer.util").float { border = "rounded" }
            end,
        },
    }
    packer.use {"wbthomason/packer.nvim", opt = true}
    vim.cmd [[autocmd User PackerComplete lua require('lvim.utils.hooks').run_on_packer_complete()]]
end

function packerWrapper.install() 
    require("packer"):install()
end

return packerWrapper
