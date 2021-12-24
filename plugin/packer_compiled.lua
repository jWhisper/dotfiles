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
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\2∞\1\0\0\2\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0005\1\4\0B\0\2\0016\0\0\0'\1\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2è\3\0\0\6\0\19\0\0316\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\1'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\1\5\1\18\1\0\0'\2\6\0'\3\n\0'\4\v\0+\5\0\0B\1\5\0016\1\0\0'\2\f\0B\1\2\0029\1\r\0015\2\17\0005\3\14\0004\4\3\0005\5\15\0>\5\1\4=\4\16\3=\3\18\2B\1\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\29:BufferLineCycleNext<CR>\n<A-l>\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCyclePrev<CR>\n<A-h>\6n\20nvim_set_keymap\bapi\bvim\bmap\16core.keymap\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2Å\2\0\0\b\0\14\1\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0026\1\0\0'\2\4\0B\1\2\0029\2\5\1\18\3\2\0009\2\6\2'\4\a\0009\5\b\0005\6\n\0005\a\t\0=\a\v\6B\5\2\0A\2\2\0019\2\f\0009\3\f\0\21\3\3\0\22\3\0\3'\4\r\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\2\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2A\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimŒ\5\1\2\n\0\24\0A3\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\6\3\0'\a\4\0'\b\5\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\6\0'\b\a\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\b\0'\b\t\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\n\0'\b\v\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\f\0'\b\r\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\14\0'\b\15\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\16\0'\b\17\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\18\0'\b\19\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\20\0'\b\21\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\22\0'\b\23\0\18\t\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>m+<cmd>lua vim.lsp.buf.code_action()<CR>\t<F5>,<cmd>lua vim.diagnostic.goto_next()<CR>\agn,<cmd>lua vim.diagnostic.goto_prev()<CR>\agp-<cmd>lua vim.diagnostic.open_float()<CR>\ago.<cmd>lua vim.lsp.buf.implementation()<CR>\agi*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\agh*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\0\0Ü\3\1\0\f\0\19\0.6\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0004\1\0\0B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\4\0009\0\3\0004\1\0\0B\0\2\0015\0\5\0006\1\0\0'\2\1\0B\1\2\0023\2\6\0006\3\a\0009\3\b\0039\3\t\0039\3\n\3B\3\1\0026\4\0\0'\5\v\0B\4\2\0029\4\f\4\18\5\3\0B\4\2\2\18\3\4\0006\4\r\0\18\5\0\0B\4\2\4X\a\bÄ8\t\b\0019\t\3\t5\n\14\0=\2\15\n=\3\16\n5\v\17\0=\v\18\nB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\vipairs\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\1\3\0\0\fpyright\ngopls\ngopls\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2í\16\0\0\t\0]\0Á\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\a\0'\1\b\0B\0\2\0029\0\t\0006\1\a\0'\2\n\0B\1\2\0029\1\v\0015\2\r\0005\3\f\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0004\4\0\0=\4\20\3=\3\21\0025\3\22\0005\4\23\0004\5!\0005\6\25\0005\a\24\0=\a\26\6\18\a\0\0'\b\27\0B\a\2\2=\a\28\6>\6\1\0055\6\30\0005\a\29\0=\a\26\6\18\a\0\0'\b\31\0B\a\2\2=\a\28\6>\6\2\0055\6 \0\18\a\0\0'\b!\0B\a\2\2=\a\28\6>\6\3\0055\6\"\0\18\a\0\0'\b#\0B\a\2\2=\a\28\6>\6\4\0055\6$\0\18\a\0\0'\b\27\0B\a\2\2=\a\28\6>\6\5\0055\6%\0\18\a\0\0'\b&\0B\a\2\2=\a\28\6>\6\6\0055\6'\0\18\a\0\0'\b(\0B\a\2\2=\a\28\6>\6\a\0055\6)\0\18\a\0\0'\b*\0B\a\2\2=\a\28\6>\6\b\0055\6+\0\18\a\0\0'\b,\0B\a\2\2=\a\28\6>\6\t\0055\6-\0\18\a\0\0'\b,\0B\a\2\2=\a\28\6>\6\n\0055\6.\0\18\a\0\0'\b/\0B\a\2\2=\a\28\6>\6\v\0055\0060\0\18\a\0\0'\b1\0B\a\2\2=\a\28\6>\6\f\0055\0062\0\18\a\0\0'\b3\0B\a\2\2=\a\28\6>\6\r\0055\0064\0\18\a\0\0'\b5\0B\a\2\2=\a\28\6>\6\14\0055\0066\0\18\a\0\0'\b7\0B\a\2\2=\a\28\6>\6\15\0055\0068\0\18\a\0\0'\b9\0B\a\2\2=\a\28\6>\6\16\0055\6:\0\18\a\0\0'\b;\0B\a\2\2=\a\28\6>\6\17\0055\6<\0\18\a\0\0'\b=\0B\a\2\2=\a\28\6>\6\18\0055\6>\0\18\a\0\0'\b?\0B\a\2\2=\a\28\6>\6\19\0055\6@\0\18\a\0\0'\bA\0B\a\2\2=\a\28\6>\6\20\0055\6B\0\18\a\0\0'\bC\0B\a\2\2=\a\28\6>\6\21\0055\6D\0\18\a\0\0'\bE\0B\a\2\2=\a\28\6>\6\22\0055\6F\0\18\a\0\0'\bG\0B\a\2\2=\a\28\6>\6\23\0055\6H\0\18\a\0\0'\bI\0B\a\2\2=\a\28\6>\6\24\0055\6J\0\18\a\0\0'\bK\0B\a\2\2=\a\28\6>\6\25\0055\6L\0\18\a\0\0'\bM\0B\a\2\2=\a\28\6>\6\26\0055\6N\0\18\a\0\0'\bO\0B\a\2\2=\a\28\6>\6\27\0055\6P\0\18\a\0\0'\bQ\0B\a\2\2=\a\28\6>\6\28\0055\6R\0\18\a\0\0'\bS\0B\a\2\2=\a\28\6>\6\29\0055\6T\0\18\a\0\0'\bU\0B\a\2\2=\a\28\6>\6\30\0055\6V\0\18\a\0\0'\bW\0B\a\2\2=\a\28\6>\6\31\0055\6X\0\18\a\0\0'\bY\0B\a\2\2=\a\28\6>\6 \5=\5Z\4=\4[\3=\3\\\2B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\15update_cwd\2\15auto_close\2\18disable_netrw\2\16open_on_tab\1\18hijack_cursor\2\27highlight_opened_files\2\17hijack_netrw\2\1\0\3\vignore\1\ftimeout\3Ù\3\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-context", "nvim-treesitter-textobjects", "nvim-ts-context-commentstring" },
    loaded = true,
    only_config = true
  },
  ["nvim-treesitter-context"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-hint-textobject"] = {
    config = { "\27LJ\2\2ô\2\0\0\5\0\14\0\0226\0\0\0'\1\1\0B\0\2\0025\1\3\0=\1\2\0006\0\4\0009\0\5\0009\0\6\0'\1\a\0'\2\b\0'\3\t\0005\4\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\1\v\0'\2\b\0'\3\f\0005\4\r\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\1*:<C-u>lua require('tsht').nodes()<CR>\6o\1\0\2\vsilent\2\fnoremap\2%:lua require('tsht').nodes()<CR>\6m\6v\20nvim_set_keymap\bapi\bvim\1\n\0\0\6h\6j\6f\6d\6n\6v\6s\6l\6a\14hint_keys\ttsht\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-ts-hint-textobject",
    url = "https://github.com/mfussenegger/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\2b\0\0\2\0\a\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\0029\0\6\0004\1\0\0B\0\2\1K\0\1\0\nsetup\fonedark\frequire\twarm\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\2\2U\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\19mappings_style\rsurround\nsetup\rsurround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2Ç\2\0\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\a\0'\3\b\0005\4\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025:lua require\"telescope.builtin\".find_files()<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>g\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-lua/telescope.nvim"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\1\0=\1\2\0K\0\1\0\30go_doc_keywordprg_enabled\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    keys = { { "", ";" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2∞\1\0\0\2\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0005\1\4\0B\0\2\0016\0\0\0'\1\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2F\0\1\6\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\2\0\0+\3\2\0+\4\2\0+\5\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim–\1\0\0\a\0\b\2!6\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0B\1\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\3\0\0\23\4\1\0\18\5\0\0+\6\2\0B\2\5\2:\2\1\2\18\3\2\0009\2\5\2\18\4\1\0\18\5\1\0B\2\4\2\18\3\2\0009\2\6\2'\4\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire˙\1\0\1\4\4\t\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\24Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\tÄ6\1\3\0009\1\4\0019\1\5\1-\2\2\0'\3\6\0B\2\2\2'\3\a\0B\1\3\1X\1\nÄ-\1\3\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\b\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\0¿\1¿\rcomplete\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleü\1\0\1\3\3\4\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\fÄ-\1\1\0009\1\2\1)\2ˇˇB\1\2\2\15\0\1\0X\2\4Ä-\1\2\0'\2\3\0B\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\0¿\28<Plug>luasnip-jump-prev\rjumpable\21select_prev_item\fvisibleô\6\1\0\v\0004\0_3\0\0\0003\1\1\0006\2\2\0'\3\3\0B\2\2\0026\3\4\0009\3\5\3'\4\a\0=\4\6\0036\3\2\0'\4\b\0B\3\2\0026\4\2\0'\5\t\0B\4\2\0029\5\n\0049\5\v\5'\6\f\0005\a\14\0004\b\3\0005\t\r\0>\t\1\b=\b\15\aB\5\3\0019\5\n\0049\5\v\5'\6\16\0005\a\18\0004\b\3\0005\t\17\0>\t\1\b=\b\15\aB\5\3\0019\5\n\0045\6\22\0005\a\20\0003\b\19\0=\b\21\a=\a\23\0065\a\26\0009\b\24\0049\b\25\bB\b\1\2=\b\27\a9\b\24\0049\b\28\bB\b\1\2=\b\29\a9\b\24\0049\b\30\b)\t¸ˇB\b\2\2=\b\31\a9\b\24\0049\b\30\b)\t\4\0B\b\2\2=\b \a9\b\24\0049\b!\bB\b\1\2=\b\"\a9\b\24\0049\b#\bB\b\1\2=\b$\a9\b\24\0049\b%\b5\t(\0009\n&\0049\n'\n=\n)\tB\b\2\2=\b*\a9\b\24\0043\t+\0005\n,\0B\b\3\2=\b-\a3\b.\0=\b/\a=\a\24\0064\a\5\0005\b0\0>\b\1\a5\b1\0>\b\2\a5\b2\0>\b\3\a5\b3\0>\b\4\a=\a\15\6B\5\2\0012\0\0ÄK\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\bvim\14lspconfig\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-ts-hint-textobject
time([[Config for nvim-ts-hint-textobject]], true)
try_loadstring("\27LJ\2\2ô\2\0\0\5\0\14\0\0226\0\0\0'\1\1\0B\0\2\0025\1\3\0=\1\2\0006\0\4\0009\0\5\0009\0\6\0'\1\a\0'\2\b\0'\3\t\0005\4\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\1\v\0'\2\b\0'\3\f\0005\4\r\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\1*:<C-u>lua require('tsht').nodes()<CR>\6o\1\0\2\vsilent\2\fnoremap\2%:lua require('tsht').nodes()<CR>\6m\6v\20nvim_set_keymap\bapi\bvim\1\n\0\0\6h\6j\6f\6d\6n\6v\6s\6l\6a\14hint_keys\ttsht\frequire\0", "config", "nvim-ts-hint-textobject")
time([[Config for nvim-ts-hint-textobject]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2í\16\0\0\t\0]\0Á\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\a\0'\1\b\0B\0\2\0029\0\t\0006\1\a\0'\2\n\0B\1\2\0029\1\v\0015\2\r\0005\3\f\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0004\4\0\0=\4\20\3=\3\21\0025\3\22\0005\4\23\0004\5!\0005\6\25\0005\a\24\0=\a\26\6\18\a\0\0'\b\27\0B\a\2\2=\a\28\6>\6\1\0055\6\30\0005\a\29\0=\a\26\6\18\a\0\0'\b\31\0B\a\2\2=\a\28\6>\6\2\0055\6 \0\18\a\0\0'\b!\0B\a\2\2=\a\28\6>\6\3\0055\6\"\0\18\a\0\0'\b#\0B\a\2\2=\a\28\6>\6\4\0055\6$\0\18\a\0\0'\b\27\0B\a\2\2=\a\28\6>\6\5\0055\6%\0\18\a\0\0'\b&\0B\a\2\2=\a\28\6>\6\6\0055\6'\0\18\a\0\0'\b(\0B\a\2\2=\a\28\6>\6\a\0055\6)\0\18\a\0\0'\b*\0B\a\2\2=\a\28\6>\6\b\0055\6+\0\18\a\0\0'\b,\0B\a\2\2=\a\28\6>\6\t\0055\6-\0\18\a\0\0'\b,\0B\a\2\2=\a\28\6>\6\n\0055\6.\0\18\a\0\0'\b/\0B\a\2\2=\a\28\6>\6\v\0055\0060\0\18\a\0\0'\b1\0B\a\2\2=\a\28\6>\6\f\0055\0062\0\18\a\0\0'\b3\0B\a\2\2=\a\28\6>\6\r\0055\0064\0\18\a\0\0'\b5\0B\a\2\2=\a\28\6>\6\14\0055\0066\0\18\a\0\0'\b7\0B\a\2\2=\a\28\6>\6\15\0055\0068\0\18\a\0\0'\b9\0B\a\2\2=\a\28\6>\6\16\0055\6:\0\18\a\0\0'\b;\0B\a\2\2=\a\28\6>\6\17\0055\6<\0\18\a\0\0'\b=\0B\a\2\2=\a\28\6>\6\18\0055\6>\0\18\a\0\0'\b?\0B\a\2\2=\a\28\6>\6\19\0055\6@\0\18\a\0\0'\bA\0B\a\2\2=\a\28\6>\6\20\0055\6B\0\18\a\0\0'\bC\0B\a\2\2=\a\28\6>\6\21\0055\6D\0\18\a\0\0'\bE\0B\a\2\2=\a\28\6>\6\22\0055\6F\0\18\a\0\0'\bG\0B\a\2\2=\a\28\6>\6\23\0055\6H\0\18\a\0\0'\bI\0B\a\2\2=\a\28\6>\6\24\0055\6J\0\18\a\0\0'\bK\0B\a\2\2=\a\28\6>\6\25\0055\6L\0\18\a\0\0'\bM\0B\a\2\2=\a\28\6>\6\26\0055\6N\0\18\a\0\0'\bO\0B\a\2\2=\a\28\6>\6\27\0055\6P\0\18\a\0\0'\bQ\0B\a\2\2=\a\28\6>\6\28\0055\6R\0\18\a\0\0'\bS\0B\a\2\2=\a\28\6>\6\29\0055\6T\0\18\a\0\0'\bU\0B\a\2\2=\a\28\6>\6\30\0055\6V\0\18\a\0\0'\bW\0B\a\2\2=\a\28\6>\6\31\0055\6X\0\18\a\0\0'\bY\0B\a\2\2=\a\28\6>\6 \5=\5Z\4=\4[\3=\3\\\2B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\15update_cwd\2\15auto_close\2\18disable_netrw\2\16open_on_tab\1\18hijack_cursor\2\27highlight_opened_files\2\17hijack_netrw\2\1\0\3\vignore\1\ftimeout\3Ù\3\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2A\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimŒ\5\1\2\n\0\24\0A3\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\6\3\0'\a\4\0'\b\5\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\6\0'\b\a\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\b\0'\b\t\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\n\0'\b\v\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\f\0'\b\r\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\14\0'\b\15\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\16\0'\b\17\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\18\0'\b\19\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\20\0'\b\21\0\18\t\4\0B\5\5\1\18\5\2\0'\6\3\0'\a\22\0'\b\23\0\18\t\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>m+<cmd>lua vim.lsp.buf.code_action()<CR>\t<F5>,<cmd>lua vim.diagnostic.goto_next()<CR>\agn,<cmd>lua vim.diagnostic.goto_prev()<CR>\agp-<cmd>lua vim.diagnostic.open_float()<CR>\ago.<cmd>lua vim.lsp.buf.implementation()<CR>\agi*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\agh*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\0\0Ü\3\1\0\f\0\19\0.6\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0004\1\0\0B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\4\0009\0\3\0004\1\0\0B\0\2\0015\0\5\0006\1\0\0'\2\1\0B\1\2\0023\2\6\0006\3\a\0009\3\b\0039\3\t\0039\3\n\3B\3\1\0026\4\0\0'\5\v\0B\4\2\0029\4\f\4\18\5\3\0B\4\2\2\18\3\4\0006\4\r\0\18\5\0\0B\4\2\4X\a\bÄ8\t\b\0019\t\3\t5\n\14\0=\2\15\n=\3\16\n5\v\17\0=\v\18\nB\t\2\1E\a\3\3R\aˆK\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\1\0\0\vipairs\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\1\3\0\0\fpyright\ngopls\ngopls\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2è\3\0\0\6\0\19\0\0316\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\1'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\1\5\1\18\1\0\0'\2\6\0'\3\n\0'\4\v\0+\5\0\0B\1\5\0016\1\0\0'\2\f\0B\1\2\0029\1\r\0015\2\17\0005\3\14\0004\4\3\0005\5\15\0>\5\1\4=\4\16\3=\3\18\2B\1\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\29:BufferLineCycleNext<CR>\n<A-l>\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCyclePrev<CR>\n<A-h>\6n\20nvim_set_keymap\bapi\bvim\bmap\16core.keymap\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\2b\0\0\2\0\a\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\0029\0\6\0004\1\0\0B\0\2\1K\0\1\0\nsetup\fonedark\frequire\twarm\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2Ç\2\0\0\5\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\a\0'\3\b\0005\4\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025:lua require\"telescope.builtin\".find_files()<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>g\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2î\b\0\0\5\0)\0-6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0005\3\r\0=\3\14\2=\2\15\0015\2\16\0=\2\17\0015\2\20\0005\3\18\0005\4\19\0=\4\14\3=\3\21\0025\3\22\0005\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\3=\3\31\2=\2 \0015\2!\0=\2\"\0015\2#\0=\2$\0015\2%\0=\2&\0015\2'\0=\2(\1B\0\2\1K\0\1\0\fcontext\1\0\2\rthrottle\2\venable\2\fmatchup\1\0\1\venable\2\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\frainbow\1\0\3\19max_file_lines\3Ë\a\18extended_mode\2\venable\2\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\t<CR>\21node_decremental\t<BS>\21node_incremental\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\ago\tbash\tjson\blua\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\2Å\2\0\0\b\0\14\1\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0026\1\0\0'\2\4\0B\1\2\0029\2\5\1\18\3\2\0009\2\6\2'\4\a\0009\5\b\0005\6\n\0005\a\t\0=\a\v\6B\5\2\0A\2\2\0019\2\f\0009\3\f\0\21\3\3\0\22\3\0\3'\4\r\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\2\0", "config", "nvim-autopairs")

vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> ; <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ";", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-ts-rainbow'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
