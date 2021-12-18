-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jwen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jwen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jwen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jwen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jwen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["format.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "\27LJ\2\n:\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\21lua-format -i %s\vformat\vstring<\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\23clang-format -i %s\vformat\vstring<\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\23clang-format -i %s\vformat\vstring5\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\16shfmt -w %s\vformat\vstring4\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\15rustfmt %s\vformat\vstring±\b\1\0\a\0002\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0004\5\3\0003\6\14\0>\6\1\5=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0004\5\3\0003\6\17\0>\6\1\5=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0004\5\3\0003\6\20\0>\6\1\5=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0004\5\3\0003\6\29\0>\6\1\5=\5\5\4>\4\1\3=\3\31\0024\3\3\0005\4!\0004\5\3\0003\6 \0>\6\1\5=\5\5\4>\4\1\3=\3\"\0024\3\3\0005\4$\0005\5#\0=\5\5\4>\4\1\3=\3%\0024\3\3\0005\4'\0005\5&\0=\5\5\4>\4\1\3=\3(\0024\3\3\0005\4*\0005\5)\0=\5\5\4>\4\1\3=\3+\0024\3\3\0005\4-\0005\5,\0=\5\5\4>\4\1\0035\4/\0005\5.\0=\5\5\4>\4\2\3=\0030\2B\0\2\0016\0\n\0009\0\5\0'\0021\0B\0\2\1K\0\1\0'autocmd BufWritePost * FormatWrite\rmarkdown\1\0\3\18start_pattern\16^```python$\vtarget\fcurrent\16end_pattern\n^```$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\thtml\1\0\0\1\2\0\0\16prettier -w\trust\1\0\0\0\ash\1\0\0\0\vpython\1\0\0\1\2\0\0=python3 -m autopep8 --in-place --aggressive --aggressive\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\bcpp\1\0\0\0\6c\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\18start_pattern\20^{{{javascript$\16end_pattern\n^}}}$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\18start_pattern\17^lua << EOF$\16end_pattern\n^EOF$\1\2\0\0\22luafmt -w replace\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\tjump\rjumpable\21select_prev_item\fvisible¶\6\1\0\r\0001\0\\6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0006\1\4\0'\3\a\0B\1\2\0025\2\b\0006\3\t\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0019\b\n\b5\n\v\0=\0\f\nB\b\2\1E\6\3\3R\6˘6\3\0\0009\3\r\3'\4\15\0=\4\14\0036\3\4\0'\5\16\0B\3\2\0026\4\4\0'\6\17\0B\4\2\0029\5\n\0045\a\21\0005\b\19\0003\t\18\0=\t\20\b=\b\22\a5\b\25\0009\t\23\0049\t\24\tB\t\1\2=\t\26\b9\t\23\0049\t\27\tB\t\1\2=\t\28\b9\t\23\0049\t\29\t)\v¸ˇB\t\2\2=\t\30\b9\t\23\0049\t\29\t)\v\4\0B\t\2\2=\t\31\b9\t\23\0049\t \tB\t\1\2=\t!\b9\t\23\0049\t\"\tB\t\1\2=\t#\b9\t\23\0049\t$\t5\v'\0009\f%\0049\f&\f=\f(\vB\t\2\2=\t)\b3\t*\0=\t+\b3\t,\0=\t-\b=\b\23\a4\b\3\0005\t.\0>\t\1\b5\t/\0>\t\2\b=\b0\aB\5\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\17capabilities\1\0\0\nsetup\vipairs\1\3\0\0\ngopls\fpyright\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\ní\16\0\0\v\0]\0Á\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0006\1\a\0'\3\n\0B\1\2\0029\1\v\0015\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0005\5\23\0004\6!\0005\a\25\0005\b\24\0=\b\26\a\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\1\0065\a\30\0005\b\29\0=\b\26\a\18\b\0\0'\n\31\0B\b\2\2=\b\28\a>\a\2\0065\a \0\18\b\0\0'\n!\0B\b\2\2=\b\28\a>\a\3\0065\a\"\0\18\b\0\0'\n#\0B\b\2\2=\b\28\a>\a\4\0065\a$\0\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\5\0065\a%\0\18\b\0\0'\n&\0B\b\2\2=\b\28\a>\a\6\0065\a'\0\18\b\0\0'\n(\0B\b\2\2=\b\28\a>\a\a\0065\a)\0\18\b\0\0'\n*\0B\b\2\2=\b\28\a>\a\b\0065\a+\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\t\0065\a-\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\n\0065\a.\0\18\b\0\0'\n/\0B\b\2\2=\b\28\a>\a\v\0065\a0\0\18\b\0\0'\n1\0B\b\2\2=\b\28\a>\a\f\0065\a2\0\18\b\0\0'\n3\0B\b\2\2=\b\28\a>\a\r\0065\a4\0\18\b\0\0'\n5\0B\b\2\2=\b\28\a>\a\14\0065\a6\0\18\b\0\0'\n7\0B\b\2\2=\b\28\a>\a\15\0065\a8\0\18\b\0\0'\n9\0B\b\2\2=\b\28\a>\a\16\0065\a:\0\18\b\0\0'\n;\0B\b\2\2=\b\28\a>\a\17\0065\a<\0\18\b\0\0'\n=\0B\b\2\2=\b\28\a>\a\18\0065\a>\0\18\b\0\0'\n?\0B\b\2\2=\b\28\a>\a\19\0065\a@\0\18\b\0\0'\nA\0B\b\2\2=\b\28\a>\a\20\0065\aB\0\18\b\0\0'\nC\0B\b\2\2=\b\28\a>\a\21\0065\aD\0\18\b\0\0'\nE\0B\b\2\2=\b\28\a>\a\22\0065\aF\0\18\b\0\0'\nG\0B\b\2\2=\b\28\a>\a\23\0065\aH\0\18\b\0\0'\nI\0B\b\2\2=\b\28\a>\a\24\0065\aJ\0\18\b\0\0'\nK\0B\b\2\2=\b\28\a>\a\25\0065\aL\0\18\b\0\0'\nM\0B\b\2\2=\b\28\a>\a\26\0065\aN\0\18\b\0\0'\nO\0B\b\2\2=\b\28\a>\a\27\0065\aP\0\18\b\0\0'\nQ\0B\b\2\2=\b\28\a>\a\28\0065\aR\0\18\b\0\0'\nS\0B\b\2\2=\b\28\a>\a\29\0065\aT\0\18\b\0\0'\nU\0B\b\2\2=\b\28\a>\a\30\0065\aV\0\18\b\0\0'\nW\0B\b\2\2=\b\28\a>\a\31\0065\aX\0\18\b\0\0'\nY\0B\b\2\2=\b\28\a>\a \6=\6Z\5=\5[\4=\4\\\3B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\27highlight_opened_files\2\15update_cwd\2\15auto_close\2\18hijack_cursor\2\17hijack_netrw\2\18disable_netrw\2\16open_on_tab\1\1\0\3\vignore\1\ftimeout\3Ù\3\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\ago\tbash\tjson\blua\vpython\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nì\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>f\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-lua/telescope.nvim"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\ní\16\0\0\v\0]\0Á\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0006\1\a\0'\3\n\0B\1\2\0029\1\v\0015\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0005\5\23\0004\6!\0005\a\25\0005\b\24\0=\b\26\a\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\1\0065\a\30\0005\b\29\0=\b\26\a\18\b\0\0'\n\31\0B\b\2\2=\b\28\a>\a\2\0065\a \0\18\b\0\0'\n!\0B\b\2\2=\b\28\a>\a\3\0065\a\"\0\18\b\0\0'\n#\0B\b\2\2=\b\28\a>\a\4\0065\a$\0\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\5\0065\a%\0\18\b\0\0'\n&\0B\b\2\2=\b\28\a>\a\6\0065\a'\0\18\b\0\0'\n(\0B\b\2\2=\b\28\a>\a\a\0065\a)\0\18\b\0\0'\n*\0B\b\2\2=\b\28\a>\a\b\0065\a+\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\t\0065\a-\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\n\0065\a.\0\18\b\0\0'\n/\0B\b\2\2=\b\28\a>\a\v\0065\a0\0\18\b\0\0'\n1\0B\b\2\2=\b\28\a>\a\f\0065\a2\0\18\b\0\0'\n3\0B\b\2\2=\b\28\a>\a\r\0065\a4\0\18\b\0\0'\n5\0B\b\2\2=\b\28\a>\a\14\0065\a6\0\18\b\0\0'\n7\0B\b\2\2=\b\28\a>\a\15\0065\a8\0\18\b\0\0'\n9\0B\b\2\2=\b\28\a>\a\16\0065\a:\0\18\b\0\0'\n;\0B\b\2\2=\b\28\a>\a\17\0065\a<\0\18\b\0\0'\n=\0B\b\2\2=\b\28\a>\a\18\0065\a>\0\18\b\0\0'\n?\0B\b\2\2=\b\28\a>\a\19\0065\a@\0\18\b\0\0'\nA\0B\b\2\2=\b\28\a>\a\20\0065\aB\0\18\b\0\0'\nC\0B\b\2\2=\b\28\a>\a\21\0065\aD\0\18\b\0\0'\nE\0B\b\2\2=\b\28\a>\a\22\0065\aF\0\18\b\0\0'\nG\0B\b\2\2=\b\28\a>\a\23\0065\aH\0\18\b\0\0'\nI\0B\b\2\2=\b\28\a>\a\24\0065\aJ\0\18\b\0\0'\nK\0B\b\2\2=\b\28\a>\a\25\0065\aL\0\18\b\0\0'\nM\0B\b\2\2=\b\28\a>\a\26\0065\aN\0\18\b\0\0'\nO\0B\b\2\2=\b\28\a>\a\27\0065\aP\0\18\b\0\0'\nQ\0B\b\2\2=\b\28\a>\a\28\0065\aR\0\18\b\0\0'\nS\0B\b\2\2=\b\28\a>\a\29\0065\aT\0\18\b\0\0'\nU\0B\b\2\2=\b\28\a>\a\30\0065\aV\0\18\b\0\0'\nW\0B\b\2\2=\b\28\a>\a\31\0065\aX\0\18\b\0\0'\nY\0B\b\2\2=\b\28\a>\a \6=\6Z\5=\5[\4=\4\\\3B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\27highlight_opened_files\2\15update_cwd\2\15auto_close\2\18hijack_cursor\2\17hijack_netrw\2\18disable_netrw\2\16open_on_tab\1\1\0\3\vignore\1\ftimeout\3Ù\3\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\ago\tbash\tjson\blua\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\tjump\rjumpable\21select_prev_item\fvisible¶\6\1\0\r\0001\0\\6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0006\1\4\0'\3\a\0B\1\2\0025\2\b\0006\3\t\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0019\b\n\b5\n\v\0=\0\f\nB\b\2\1E\6\3\3R\6˘6\3\0\0009\3\r\3'\4\15\0=\4\14\0036\3\4\0'\5\16\0B\3\2\0026\4\4\0'\6\17\0B\4\2\0029\5\n\0045\a\21\0005\b\19\0003\t\18\0=\t\20\b=\b\22\a5\b\25\0009\t\23\0049\t\24\tB\t\1\2=\t\26\b9\t\23\0049\t\27\tB\t\1\2=\t\28\b9\t\23\0049\t\29\t)\v¸ˇB\t\2\2=\t\30\b9\t\23\0049\t\29\t)\v\4\0B\t\2\2=\t\31\b9\t\23\0049\t \tB\t\1\2=\t!\b9\t\23\0049\t\"\tB\t\1\2=\t#\b9\t\23\0049\t$\t5\v'\0009\f%\0049\f&\f=\f(\vB\t\2\2=\t)\b3\t*\0=\t+\b3\t,\0=\t-\b=\b\23\a4\b\3\0005\t.\0>\t\1\b5\t/\0>\t\2\b=\b0\aB\5\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\17capabilities\1\0\0\nsetup\vipairs\1\3\0\0\ngopls\fpyright\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nì\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>f\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'format.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'format.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
