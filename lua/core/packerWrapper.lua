local data_dir = require("core.global").data_dir
local config_dir = require("core.global").config_dir
local log = nil
local utils = require("core.utils")

-- compile_path尽量放在runtimepath，自动加载；不然需要手动load
local compile_path = config_dir .. "/plugin/packer_compiled.lua"

packerWrapper = {}

local function pcall_packer_command(cmd, kwargs)
  local status_ok, msg = pcall(function()
    require("packer")[cmd](unpack(kwargs or {}))
  end)
  if not status_ok then
    log.error(cmd .. " failed with: " .. vim.inspect(msg))
    log.trace(vim.inspect(vim.fn.eval "v:errmsg"))
  end
end

function packerWrapper:load_packer() 
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
        compile_path = compile_path,
        log = { level = global.log_level },
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
    log = require("packer.log")
    packer.reset()
    packer.use {"wbthomason/packer.nvim", opt = true}

    self.repos = {}
	self.packer = packer

    vim.cmd [[autocmd User PackerComplete lua require('core.packerWrapper'):run_on_packer_complete()]]
    -- vim.cmd [[autocmd! User PackerCompile lua require('core.packerWrapper'):run_on_packer_complete()]]
    -- vim.cmd [[autocmd! User PackerClean lua require('core.packerWrapper'):clean()]]

	-- setmetatable(self, packer)

    return self
end

function packerWrapper:run_on_packer_complete() 
    vim.fn.delete(compile_path)
	-- pcall_packer_command("compile")
	self.packer.compile()
    -- log.debug "regenerate compile file..."
    local stat = vim.loop.fs_stat(compile_path)
    -- log.debug(vim.inspect(stat))
	if not utils.is_file(compile_path) then
		log.error "generate compile_file failed..."
	end
end


function packerWrapper:clean()
    log.debug "delete compile_file..."
	pcall_packer_command("clean")
end

function packerWrapper:install() 
    for _, fn in ipairs(self.repos) do
        fn()
    end
    self:run_on_packer_complete()
	self.packer.install()
    self.repos = nil    
end

return packerWrapper
