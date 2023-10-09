# Lua的配置

## catalog
- init.lua 为 Nvim 配置的 Entry point，我们主要用来导入其他 *.lua 文件
    - keymaps.lua 配置按键映射
    - options.lua 配置选项
    - lzay-init.lua 加载plugins中所有的插件

- /lua/plugins 存放所有的插件，一般是一个文件代表一个插件 

## reference:
    - https://zhuanlan.zhihu.com/p/382092667
    - https://zhuanlan.zhihu.com/p/388397656
    - https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/
    - https://developer.aliyun.com/article/1295874
    - https://github.com/fanxy1/nvim-dotfile/tree/main

## dependence:
    neovim => 0.7
    git
    fd, ripgrep(use for telescope)
    nodejs
