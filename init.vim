
let g:my_init_script_path=expand("<sfile>")
let g:my_scripts_root=expand("<sfile>:h")

execute "set runtimepath+=" . g:my_scripts_root

set nocompatible
set fileformats=unix,dos "自动换行格式
set number "显示行号
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "tab键扩展为空格
set smarttab
set nobackup "不自动备份
set noundofile
set incsearch "在输出时搜索
set ignorecase
set hlsearch
set backspace=indent,eol,start
set history=400
set ruler
set showcmd
set go=m
"set nowarp "不自动换行
set list
set listchars=tab:\|-
set cursorline "高亮当前行

set fileencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,cp936,big5
language message zh_CN.UTF-8

colorscheme monokai

syntax on
filetype plugin indent on

if has("gui_running")
    if has("gui_win32")
        :set guifont=Meslo_LG_S:h10
        :set columns=100
    elseif has("gui_gtk2")
        :set guifont=Meslo\ LG\ S\ 10
        :set columns=120
    endif
    set lines=30
endif

" 开启时窗口最大化
if has("gui_running")
    if has("gui_win32")
        au GUIEnter * simalt ~x
    endif
endif


" 像vs一样的缩进
vmap > >gv
vmap < <gv

let mapleader = ","

" 快速编辑及更新vimrc
execute "nmap <Leader>ee :e! " . g:my_init_script_path . "<CR>"
execute "autocmd! BufWritePost init.vim source " . g:my_init_script_path

" 菜单栏乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
