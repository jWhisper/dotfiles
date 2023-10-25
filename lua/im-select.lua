-- install im-select
vim.cmd([[
    augroup im-select
      autocmd!
      set timeoutlen=0
      autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC
    augroup end
]])
