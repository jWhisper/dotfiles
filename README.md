https://zhuanlan.zhihu.com/p/382092667
create by https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/

- init.lua 为 Nvim 配置的 Entry point，我们主要用来导入其他 *.lua 文件
    - colorscheme.lua 配置主题
    - keymaps.lua 配置按键映射
    - lsp.lua 配置 LSP
    - options.lua 配置选项
    - plugins.lua 配置插件

- config 用于存放各种插件自身的配置，文件名为插件的名字，这样比较好找。这里的 nvim-cmp.lua 就是 nvim-cmp 插件的配置文件
