-- 通用配置
settings={}

local function set_general()
    vim.cmd([[
        " set number
        set relativenumber
        set notimeout
        set cursorline
        set encoding=utf-8
        set ruler
        set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
        set cmdheight=2
        set fillchars=vert:\ ,stl:\ ,stlnc:\ 
        set showmatch
        set matchtime=5
        set hlsearch
        set ignorecase
        "paste模式切换
        set pastetoggle=<F6>
        set formatoptions=tcrqn
        set tabstop=4
        set softtabstop=4
        set shiftwidth=4
        set expandtab
        " 换行
        set wrap
        set smarttab
        " 自动格式化
        set formatoptions=tcrqn
        " 在被分割的窗口间显示空白，便于阅读
        set fillchars=vert:\ ,stl:\ ,stlnc:\ 
        " show print margin
        set colorcolumn=79
        " 与windows共享剪贴板
        set clipboard+=unnamed
        " syntax on
        " 不要生成swap文件，当buffer被丢弃的时候隐藏它
        setlocal noswapfile
    ]]) 

    local cache_dir = require("core.global").cache_dir
    vim.cmd("set backup")
    vim.cmd("set backupdir=" .. cache_dir) 
end

function settings.init()
    set_general()
end

return settings
