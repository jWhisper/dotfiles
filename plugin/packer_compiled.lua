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
    config = { "\27LJ\2\n{\0\0\3\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\2\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\frequire\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n\3\0\0\a\0\19\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1\18\1\0\0'\3\6\0'\4\n\0'\5\v\0+\6\0\0B\1\5\0016\1\0\0'\3\f\0B\1\2\0029\1\r\0015\3\17\0005\4\14\0004\5\3\0005\6\15\0>\6\1\5=\5\16\4=\4\18\3B\1\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\14highlight\14Directory\15text_align\tleft\ttext\18File Explorer\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\29:BufferLineCycleNext<CR>\n<A-l>\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCyclePrev<CR>\n<A-h>\6n\20nvim_set_keymap\bapi\bvim\bmap\16core.keymap\frequire\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["format.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "\27LJ\2\n:\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\21lua-format -i %s\vformat\vstring<\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\23clang-format -i %s\vformat\vstring<\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\23clang-format -i %s\vformat\vstring5\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\16shfmt -w %s\vformat\vstring4\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\15rustfmt %s\vformat\vstring±\b\1\0\a\0002\0m6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0004\5\3\0003\6\14\0>\6\1\5=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0004\5\3\0003\6\17\0>\6\1\5=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0004\5\3\0003\6\20\0>\6\1\5=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0004\5\3\0003\6\29\0>\6\1\5=\5\5\4>\4\1\3=\3\31\0024\3\3\0005\4!\0004\5\3\0003\6 \0>\6\1\5=\5\5\4>\4\1\3=\3\"\0024\3\3\0005\4$\0005\5#\0=\5\5\4>\4\1\3=\3%\0024\3\3\0005\4'\0005\5&\0=\5\5\4>\4\1\3=\3(\0024\3\3\0005\4*\0005\5)\0=\5\5\4>\4\1\3=\3+\0024\3\3\0005\4-\0005\5,\0=\5\5\4>\4\1\0035\4/\0005\5.\0=\5\5\4>\4\2\3=\0030\2B\0\2\0016\0\n\0009\0\5\0'\0021\0B\0\2\1K\0\1\0'autocmd BufWritePost * FormatWrite\rmarkdown\1\0\3\vtarget\fcurrent\16end_pattern\n^```$\18start_pattern\16^```python$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\tjson\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\thtml\1\0\0\1\2\0\0\16prettier -w\trust\1\0\0\0\ash\1\0\0\0\vpython\1\0\0\1\2\0\0=python3 -m autopep8 --in-place --aggressive --aggressive\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\bcpp\1\0\0\0\6c\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\16end_pattern\n^}}}$\18start_pattern\20^{{{javascript$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\1\2\0\0\22luafmt -w replace\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n\2\0\0\n\0\14\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\5\1\18\4\2\0009\2\6\2'\5\a\0009\6\b\0005\b\n\0005\t\t\0=\t\v\bB\6\2\0A\2\2\0019\2\f\0009\3\f\0\21\3\3\0\22\3\0\3'\4\r\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\2\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_option\bapi\bvimþ\5\1\2\v\0\26\0E3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\0012\0\0€K\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>m+<cmd>lua vim.lsp.buf.code_action()<CR>\t<F5>,<cmd>lua vim.diagnostic.goto_next()<CR>\agn,<cmd>lua vim.diagnostic.goto_prev()<CR>\agp-<cmd>lua vim.diagnostic.open_float()<CR>\ago.<cmd>lua vim.lsp.buf.implementation()<CR>\agi*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\agh*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0†\3\1\0\r\0\19\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0015\0\5\0006\1\0\0'\3\1\0B\1\2\0023\2\6\0006\3\a\0009\3\b\0039\3\t\0039\3\n\3B\3\1\0026\4\0\0'\6\v\0B\4\2\0029\4\f\4\18\6\3\0B\4\2\2\18\3\4\0006\4\r\0\18\6\0\0B\4\2\4X\a\b€8\t\b\0019\t\3\t5\v\14\0=\2\15\v=\3\16\v5\f\17\0=\f\18\vB\t\2\1E\a\3\3R\aöK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\vipairs\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\1\3\0\0\fpyright\ngopls\ngopls\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n’\16\0\0\v\0]\0ç\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0006\1\a\0'\3\n\0B\1\2\0029\1\v\0015\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0005\5\23\0004\6!\0005\a\25\0005\b\24\0=\b\26\a\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\1\0065\a\30\0005\b\29\0=\b\26\a\18\b\0\0'\n\31\0B\b\2\2=\b\28\a>\a\2\0065\a \0\18\b\0\0'\n!\0B\b\2\2=\b\28\a>\a\3\0065\a\"\0\18\b\0\0'\n#\0B\b\2\2=\b\28\a>\a\4\0065\a$\0\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\5\0065\a%\0\18\b\0\0'\n&\0B\b\2\2=\b\28\a>\a\6\0065\a'\0\18\b\0\0'\n(\0B\b\2\2=\b\28\a>\a\a\0065\a)\0\18\b\0\0'\n*\0B\b\2\2=\b\28\a>\a\b\0065\a+\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\t\0065\a-\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\n\0065\a.\0\18\b\0\0'\n/\0B\b\2\2=\b\28\a>\a\v\0065\a0\0\18\b\0\0'\n1\0B\b\2\2=\b\28\a>\a\f\0065\a2\0\18\b\0\0'\n3\0B\b\2\2=\b\28\a>\a\r\0065\a4\0\18\b\0\0'\n5\0B\b\2\2=\b\28\a>\a\14\0065\a6\0\18\b\0\0'\n7\0B\b\2\2=\b\28\a>\a\15\0065\a8\0\18\b\0\0'\n9\0B\b\2\2=\b\28\a>\a\16\0065\a:\0\18\b\0\0'\n;\0B\b\2\2=\b\28\a>\a\17\0065\a<\0\18\b\0\0'\n=\0B\b\2\2=\b\28\a>\a\18\0065\a>\0\18\b\0\0'\n?\0B\b\2\2=\b\28\a>\a\19\0065\a@\0\18\b\0\0'\nA\0B\b\2\2=\b\28\a>\a\20\0065\aB\0\18\b\0\0'\nC\0B\b\2\2=\b\28\a>\a\21\0065\aD\0\18\b\0\0'\nE\0B\b\2\2=\b\28\a>\a\22\0065\aF\0\18\b\0\0'\nG\0B\b\2\2=\b\28\a>\a\23\0065\aH\0\18\b\0\0'\nI\0B\b\2\2=\b\28\a>\a\24\0065\aJ\0\18\b\0\0'\nK\0B\b\2\2=\b\28\a>\a\25\0065\aL\0\18\b\0\0'\nM\0B\b\2\2=\b\28\a>\a\26\0065\aN\0\18\b\0\0'\nO\0B\b\2\2=\b\28\a>\a\27\0065\aP\0\18\b\0\0'\nQ\0B\b\2\2=\b\28\a>\a\28\0065\aR\0\18\b\0\0'\nS\0B\b\2\2=\b\28\a>\a\29\0065\aT\0\18\b\0\0'\nU\0B\b\2\2=\b\28\a>\a\30\0065\aV\0\18\b\0\0'\nW\0B\b\2\2=\b\28\a>\a\31\0065\aX\0\18\b\0\0'\nY\0B\b\2\2=\b\28\a>\a \6=\6Z\5=\5[\4=\4\\\3B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\nwidth\3\30\tside\tleft\16auto_resize\1\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\15update_cwd\2\15auto_close\2\18hijack_cursor\2\17hijack_netrw\2\16open_on_tab\1\18disable_netrw\2\27highlight_opened_files\2\1\0\3\vignore\1\venable\2\ftimeout\3ô\3\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects", "nvim-treesitter-context" },
    loaded = true,
    only_config = true
  },
  ["nvim-treesitter-context"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
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
  ["surround.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19mappings_style\rsurround\nsetup\rsurround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‚\2\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025:lua require\"telescope.builtin\".find_files()<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>g\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-lua/telescope.nvim"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\n;\0\0\2\0\3\0\0056\0\0\0009\0\1\0+\1\1\0=\1\2\0K\0\1\0\30go_doc_keywordprg_enabled\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
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
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    keys = { { "", "," } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jwen/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n\3\0\0\a\0\19\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1\18\1\0\0'\3\6\0'\4\n\0'\5\v\0+\6\0\0B\1\5\0016\1\0\0'\3\f\0B\1\2\0029\1\r\0015\3\17\0005\4\14\0004\5\3\0005\6\15\0>\6\1\5=\5\16\4=\4\18\3B\1\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\14highlight\14Directory\15text_align\tleft\ttext\18File Explorer\rfiletype\rNvimTree\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\29:BufferLineCycleNext<CR>\n<A-l>\1\0\2\vsilent\2\fnoremap\2\29:BufferLineCyclePrev<CR>\n<A-h>\6n\20nvim_set_keymap\bapi\bvim\bmap\16core.keymap\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_option\bapi\bvimþ\5\1\2\v\0\26\0E3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\0012\0\0€K\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>m+<cmd>lua vim.lsp.buf.code_action()<CR>\t<F5>,<cmd>lua vim.diagnostic.goto_next()<CR>\agn,<cmd>lua vim.diagnostic.goto_prev()<CR>\agp-<cmd>lua vim.diagnostic.open_float()<CR>\ago.<cmd>lua vim.lsp.buf.implementation()<CR>\agi*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\agh*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0†\3\1\0\r\0\19\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0015\0\5\0006\1\0\0'\3\1\0B\1\2\0023\2\6\0006\3\a\0009\3\b\0039\3\t\0039\3\n\3B\3\1\0026\4\0\0'\6\v\0B\4\2\0029\4\f\4\18\6\3\0B\4\2\2\18\3\4\0006\4\r\0\18\6\0\0B\4\2\4X\a\b€8\t\b\0019\t\3\t5\v\14\0=\2\15\v=\3\16\v5\f\17\0=\f\18\vB\t\2\1E\a\3\3R\aöK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\vipairs\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\0\1\3\0\0\fpyright\ngopls\ngopls\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n’\16\0\0\v\0]\0ç\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0006\1\a\0'\3\n\0B\1\2\0029\1\v\0015\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0005\5\23\0004\6!\0005\a\25\0005\b\24\0=\b\26\a\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\1\0065\a\30\0005\b\29\0=\b\26\a\18\b\0\0'\n\31\0B\b\2\2=\b\28\a>\a\2\0065\a \0\18\b\0\0'\n!\0B\b\2\2=\b\28\a>\a\3\0065\a\"\0\18\b\0\0'\n#\0B\b\2\2=\b\28\a>\a\4\0065\a$\0\18\b\0\0'\n\27\0B\b\2\2=\b\28\a>\a\5\0065\a%\0\18\b\0\0'\n&\0B\b\2\2=\b\28\a>\a\6\0065\a'\0\18\b\0\0'\n(\0B\b\2\2=\b\28\a>\a\a\0065\a)\0\18\b\0\0'\n*\0B\b\2\2=\b\28\a>\a\b\0065\a+\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\t\0065\a-\0\18\b\0\0'\n,\0B\b\2\2=\b\28\a>\a\n\0065\a.\0\18\b\0\0'\n/\0B\b\2\2=\b\28\a>\a\v\0065\a0\0\18\b\0\0'\n1\0B\b\2\2=\b\28\a>\a\f\0065\a2\0\18\b\0\0'\n3\0B\b\2\2=\b\28\a>\a\r\0065\a4\0\18\b\0\0'\n5\0B\b\2\2=\b\28\a>\a\14\0065\a6\0\18\b\0\0'\n7\0B\b\2\2=\b\28\a>\a\15\0065\a8\0\18\b\0\0'\n9\0B\b\2\2=\b\28\a>\a\16\0065\a:\0\18\b\0\0'\n;\0B\b\2\2=\b\28\a>\a\17\0065\a<\0\18\b\0\0'\n=\0B\b\2\2=\b\28\a>\a\18\0065\a>\0\18\b\0\0'\n?\0B\b\2\2=\b\28\a>\a\19\0065\a@\0\18\b\0\0'\nA\0B\b\2\2=\b\28\a>\a\20\0065\aB\0\18\b\0\0'\nC\0B\b\2\2=\b\28\a>\a\21\0065\aD\0\18\b\0\0'\nE\0B\b\2\2=\b\28\a>\a\22\0065\aF\0\18\b\0\0'\nG\0B\b\2\2=\b\28\a>\a\23\0065\aH\0\18\b\0\0'\nI\0B\b\2\2=\b\28\a>\a\24\0065\aJ\0\18\b\0\0'\nK\0B\b\2\2=\b\28\a>\a\25\0065\aL\0\18\b\0\0'\nM\0B\b\2\2=\b\28\a>\a\26\0065\aN\0\18\b\0\0'\nO\0B\b\2\2=\b\28\a>\a\27\0065\aP\0\18\b\0\0'\nQ\0B\b\2\2=\b\28\a>\a\28\0065\aR\0\18\b\0\0'\nS\0B\b\2\2=\b\28\a>\a\29\0065\aT\0\18\b\0\0'\nU\0B\b\2\2=\b\28\a>\a\30\0065\aV\0\18\b\0\0'\nW\0B\b\2\2=\b\28\a>\a\31\0065\aX\0\18\b\0\0'\nY\0B\b\2\2=\b\28\a>\a \6=\6Z\5=\5[\4=\4\\\3B\1\2\1K\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\nwidth\3\30\tside\tleft\16auto_resize\1\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\bgit\1\0\a\15update_cwd\2\15auto_close\2\18hijack_cursor\2\17hijack_netrw\2\16open_on_tab\1\18disable_netrw\2\27highlight_opened_files\2\1\0\3\vignore\1\venable\2\ftimeout\3ô\3\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\2\vsilent\2\fnoremap\2\24:NvimTreeToggle<CR>\t<F2>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÑ\b\0\0\a\0%\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\22\0005\4\18\0005\5\19\0005\6\20\0=\6\21\5=\5\14\4=\4\23\0035\4\24\0005\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \4=\4!\3=\3\"\0025\3#\0=\3$\2B\0\2\1K\0\1\0\fcontext\1\0\2\venable\2\rthrottle\2\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\venable\2\14set_jumps\2\vselect\1\0\0\aiF\1\0\5\ago$(function_definition) @function\6c$(function_definition) @function\vpython$(function_definition) @function\bcpp$(function_definition) @function\tjava#(method_declaration) @function\1\0\4\aac\17@class.outer\aif\20@function.inner\aaf\20@function.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\n<TAB>\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\fdisable\1\3\0\0\6c\trust\1\0\2\venable\2&additional_vim_regex_highlighting\1\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\1\17sync_install\1\1\6\0\0\ago\tbash\tjson\blua\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n{\0\0\3\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\2\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‚\2\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\0025:lua require\"telescope.builtin\".find_files()<CR>\14<leader>f\1\0\2\vsilent\2\fnoremap\0024:lua require\"telescope.builtin\".live_grep()<CR>\14<leader>g\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvimÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireú\1\0\1\6\4\t\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\24€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\t€6\1\3\0009\1\4\0019\1\5\1-\3\2\0'\5\6\0B\3\2\2'\4\a\0B\1\3\1X\1\n€-\1\3\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\b\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\4À\3À\0À\1À\rcomplete\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleŸ\1\0\1\4\3\4\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\f€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\4€-\1\2\0'\3\3\0B\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\4À\3À\0À\28<Plug>luasnip-jump-prev\rjumpable\21select_prev_item\fvisibleú\f\1\0\r\0A\0\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\0013\0\14\0003\1\15\0006\2\16\0'\4\17\0B\2\2\0026\3\0\0009\3\18\3'\4\20\0=\4\19\0036\3\16\0'\5\21\0B\3\2\0026\4\16\0'\6\22\0B\4\2\0029\5\23\0049\5\24\5'\a\25\0005\b\27\0004\t\3\0005\n\26\0>\n\1\t=\t\28\bB\5\3\0019\5\23\0049\5\24\5'\a\29\0005\b\31\0004\t\3\0005\n\30\0>\n\1\t=\t\28\bB\5\3\0019\5\23\0045\a#\0005\b!\0003\t \0=\t\"\b=\b$\a5\b'\0009\t%\0049\t&\tB\t\1\2=\t(\b9\t%\0049\t)\tB\t\1\2=\t*\b9\t%\0049\t+\t)\vüÿB\t\2\2=\t,\b9\t%\0049\t+\t)\v\4\0B\t\2\2=\t-\b9\t%\0049\t.\tB\t\1\2=\t/\b9\t%\0049\t0\tB\t\1\2=\t1\b9\t%\0049\t2\t5\v5\0009\f3\0049\f4\f=\f6\vB\t\2\2=\t7\b9\t%\0043\v8\0005\f9\0B\t\3\2=\t:\b3\t;\0=\t<\b=\b%\a4\b\5\0005\t=\0>\t\1\b5\t>\0>\t\2\b5\t?\0>\t\3\b5\t@\0>\t\4\b=\b\28\aB\5\2\0012\0\0€K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\bcmp\fluasnip\21menuone,noselect\16completeopt\6o\14lspconfig\frequire\0\0009highlight CmpItemKindMethod guifg=#B48EAD guibg=NONE;highlight CmpItemKindFunction guifg=#B48EAD guibg=NONE7highlight CmpItemKindText guifg=#81A1C1 guibg=NONE<highlight CmpItemKindInterface guifg=#88C0D0 guibg=NONE;highlight CmpItemKindVariable guifg=#8FBCBB guibg=NONE=highlight CmpItemAbbrMatchFuzzy guifg=#5E81AC guibg=NONE8highlight CmpItemAbbrMatch guifg=#5E81AC guibg=NONE:highlight CmpItemKindKeyword guifg=#EBCB8B guibg=NONE;highlight CmpItemKindProperty guifg=#A3BE8C guibg=NONE7highlight CmpItemKindUnit guifg=#D08770 guibg=NONE:highlight CmpItemKindSnippet guifg=#BF616A guibg=NONEOhighlight CmpItemAbbrDeprecated guifg=#D8DEE9 guibg=NONE gui=strikethrough\bcmd\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n\2\0\0\n\0\14\1\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\5\1\18\4\2\0009\2\6\2'\5\a\0009\6\b\0005\b\n\0005\t\t\0=\t\v\bB\6\2\0A\2\2\0019\2\f\0009\3\f\0\21\3\3\0\22\3\0\3'\4\r\0<\4\3\2K\0\1\0\vracket\tlisp\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\2\0", "config", "nvim-autopairs")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'format.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'format.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> , <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ",", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /Users/jwen/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
