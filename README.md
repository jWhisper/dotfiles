# Lua的配置
## install
- mac的终端最好是1. 描述文件-键盘-☑️将options当成meta键，那么映射就可以是M了；2.高级选项请使用 xterm-256color

## catalog
- init.lua 为 Nvim 配置的 Entry point，我们主要用来导入其他 *.lua 文件
    - keymaps.lua 按键映射
    - options.lua 配置选项
    - autocmd.lua 自动组

- /lua/plugins 存放所有的插件，一般是一个文件代表一个插件 

- pre others

## reference:
    https://github.com/nvim-lua/kickstart.nvim
    https://github.com/patricorgi/dotfiles
    https://github.com/pkazmier/nvim

## dependence:
    neovim => 0.8
    git, gcc, ripgrep

