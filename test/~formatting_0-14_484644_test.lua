--local on_windows = vim.loop.os_uname().version:match "Windows"

a = {
    ["dhruvasagar/vim-table-mode"] = {ft='rmd,markdown,text'}
}

b = {"test1", "test2"}

c = {}

print(#b, #c)

table.remove(b, #b)
print(b)
