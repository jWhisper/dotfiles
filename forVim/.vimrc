"For window gvim version
set guifont=FiraMono_Nerd_Font:h16
set lines=35 columns=118
winpos 300 0

" 基础设置
let mapleader=','
"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
syntax on "语法高亮
set number "显示行号
set relativenumber
set nocompatible "不与vi兼容
set showmode
set showcmd
set mouse=a
set encoding=utf-8
"set t_Co=256 " 启用256色
filetype indent on " 开启文件类型检查，并且载入与该类型对应的缩进规则

" 缩进
set cindent "c/c++自动缩进"
set smartindent
set autoindent "参考上一行的缩进方式进行自动缩进"
set tabstop=4
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab
set expandtab

" 外观
set cursorline
set ruler
set textwidth=80
" set wrap
set linebreak
set wrapmargin=2
set laststatus=2 " 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。

"搜索
set showmatch
set hlsearch
set incsearch
set ignorecase

"编辑
set spell spelllang=en_us
set nobackup
set noswapfile
set undofile " 保留撤销历史
set undodir=~/.vim/.undo//
set autochdir
set noerrorbells " 出错时，不要发出响声
set visualbell
set history=1000
set listchars=tab:\|\ ,trail:■
set list

set wildmenu
set wildmode=longest:list,full
"命令模式下tab自动补全命令


"多窗口操作
map <C-+> <C-W>+  "C-+：扩大窗口"
map <C--> <C-W>-  "C-- :   缩小窗口"
map <C-l> <C-W>l "C-l 移动到右侧窗口"
map <C-h> <C-W>h "C-h 移动到左侧窗口"
map <C-j> <C-W>j   "C-j 移动到下方窗口"
map <C-k> <C-W>k "C-k 移动到上方窗口"

" 移动
map <C-u> 9k "向上只移动9行，默认半屏
map <C-d> 9j


" 插件开始的位置
call plug#begin()

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'

Plug 'easymotion/vim-easymotion'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

" 配色方案
Plug 'KeitaNakamura/neodark.vim'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

Plug 'machakann/vim-highlightedyank'

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

call plug#end()

" 以下是每个插件的具体配置
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

colorscheme neodark

nnoremap <leader>n :NERDTreeToggle<CR>

" for which-key
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
" By default timeoutlen is 1000 ms
set timeoutlen=500

"for easy-motion
" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)

" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)
