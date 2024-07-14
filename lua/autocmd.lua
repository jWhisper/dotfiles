-- install im-select
-- vim.cmd([[
--     augroup im-select
--       autocmd!
--       set timeoutlen=0
--       autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC
--     augroup end
-- ]])
--
vim.cmd([[
    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
    augroup END
]])
