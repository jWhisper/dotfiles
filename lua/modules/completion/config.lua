local config = {}

function config.cmpconf()
    --vim.cmd [[highlight CmpItemAbbrDeprecated guifg=#D8DEE9 guibg=NONE gui=strikethrough]]
    --vim.cmd [[highlight CmpItemKindSnippet guifg=#BF616A guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindUnit guifg=#D08770 guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindProperty guifg=#A3BE8C guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindKeyword guifg=#EBCB8B guibg=NONE]]
    --vim.cmd [[highlight CmpItemAbbrMatch guifg=#5E81AC guibg=NONE]]
    --vim.cmd [[highlight CmpItemAbbrMatchFuzzy guifg=#5E81AC guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindVariable guifg=#8FBCBB guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindInterface guifg=#88C0D0 guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindText guifg=#81A1C1 guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindFunction guifg=#B48EAD guibg=NONE]]
    --vim.cmd [[highlight CmpItemKindMethod guifg=#B48EAD guibg=NONE]]

    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end
    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and
                   vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(
                       col, col):match("%s") == nil
    end

    local lspconfig = require('lspconfig')

    -- Set completeopt to have a better completion experience
    vim.o.completeopt = 'menuone,noselect'

    -- luasnip setup
    local luasnip = require 'luasnip'

    -- nvim-cmp setup
    local cmp = require 'cmp'
    cmp.setup.cmdline(':', {
        sources = {
            {name='cmdline'}
        }
    })
    cmp.setup.cmdline('/', {
        sources = {
            {name='buffer'}
        }
    })
    cmp.setup {
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
        mapping = {
            ['<C-p>'] = cmp.mapping.select_prev_item(),
            ['<C-n>'] = cmp.mapping.select_next_item(),
            ['<C-d>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.close(),
            ['<CR>'] = cmp.mapping.confirm {
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
            },
            ['<Tab>'] = cmp.mapping(function(fallback)
              if cmp.visible() then
                    cmp.select_next_item()
                  elseif luasnip.expand_or_jumpable() then
                    vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
                  elseif has_words_before() then
                    cmp.complete()
                  else
                    fallback()
              end
            end, {"i", "s"}),
            ['<S-Tab>'] = function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                  t("<Plug>luasnip-jump-prev")
              else
                fallback()
              end
            end,
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { 
                name = 'buffer',
                -- option = {},
            },
            {
                name = 'path',
            },
        },
    }
end

function config.lspsetup()
    -- npm i -g pyright
end

function config.lspconf()
    -- 这是支持的两种语言 python，go
    require("lspconfig").pyright.setup{}
    require'lspconfig'.gopls.setup{}
	local servers = { 'pyright', 'gopls' }

	local nvim_lsp = require('lspconfig')

	-- Use an on_attach function to only map the following keys
	-- after the language server attaches to the current buffer
	local on_attach = function(client, bufnr)
		local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
		local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

		 -- Enable completion triggered by <c-x><c-o>
		 -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

		-- Mappings.
		local opts = { noremap=true, silent=true }

		-- See `:help vim.lsp.*` for documentation on any of the below functions
		buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
		buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
		buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
		buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
		buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        -- diagnostic
		--buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
		--buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
		--buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
		--buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
		--buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
		--buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
		-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
		buf_set_keymap('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
		buf_set_keymap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
		buf_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        -- file 
		buf_set_keymap('n', '<F5>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
		buf_set_keymap('n', '<leader>m', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

	end

	-- Use a loop to conveniently call 'setup' on multiple servers and
	-- map buffer local keybindings when the language server attaches
    -- Add additional capabilities supported by nvim-cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

	for _, lsp in ipairs(servers) do
  		nvim_lsp[lsp].setup {
    		on_attach = on_attach,
            capabilities = capabilities,
    		flags = {
      			debounce_text_changes = 150,
    		}
  	}
	end
end

function config.luasnip() 
    require("luasnip").config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI"
    }
    -- friendly-...
    require("luasnip/loaders/from_vscode").load()
end

function config.autopairs()
    require("nvim-autopairs").setup {}

    -- If you want insert `(` after select function or method item
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done",
                 cmp_autopairs.on_confirm_done({map_char = {tex = ""}}))
    cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"
end

return config
