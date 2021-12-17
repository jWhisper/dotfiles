--local on_windows = vim.loop.os_uname().version:match "Windows"

a = {
    ["dhruvasagar/vim-table-mode"] = {ft='rmd,markdown,text'}
}

b = {"test1", "test2"}

print(table.concat({"test0", b}))

for i, v in pairs(a) do
    print(i)
    print(v)
end
