"不使用交换文件"
set noswapfile
"显示行号"
set number
"显示相对行号"
set relativenumber
"高亮当前行"
set cursorline
"使用空格替代Tab"
set expandtab
"开启新行时, 使用自动缩进"
set smartindent
"tab缩进为4个空格"
set tabstop=4
"<<和>>命令移动宽度为4"
set shiftwidth=4
"使用退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

nnoremap H ^
nnoremap L $

vnoremap H ^
vnoremap L $

inoremap jk <Esc>
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
