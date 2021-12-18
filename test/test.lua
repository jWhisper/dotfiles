--local on_windows = vim.loop.os_uname().version:match "Windows"

a = {
    ["dhruvasagar/vim-table-mode"] = {ft='rmd,markdown,text'}
}

b = {"test1", "test2"}

table.remove(b, #b)
print(b)
