"=================================
"    Vim基本配置
"===================================
"colorscheme editplus
"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
set cursorline
set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

"==================================
"compile debug run
"==================================
"func! CompileCode()
"    exec "w"
""    if &filetype=="c"
"        exec "!gcc -Wall %<.c -o %<"
"    elseif &filetype=="cpp"
"        exec "!g++ -Wall %<.cpp -o %<"
   " elseif &filetype=="python"
       " exec "!python %<.py"
"    endif
"endfunc

"func! RunCode()
"    exec "w"
"    if &filetype=="c" || &filetype=="cpp"
"        exec "! ./%<"
"    elseif &filetype=="python"
"        exec "python %<.py"
"    endif
"endfunc

"func! RunGDB()
"    if &filetype=="c" || &filetype=="cpp"
"        exec "w"
"        exec "!gcc % -g -o %<"
"        exec "!gdb ./%<"
"    endif    
"endfunc
 
"map <c-c> :call CompileCode()<CR>
"map <c-r> :call CompileCode()<CR>
"map <c-d> :call RunGDB()<CR>

"==================================
"    使用Vundle的必须配置
"===================================
set nocompatible              " be iMproved  
filetype off                  " required!       
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
      
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
      
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空"格使用“-”代替。  
Bundle 'EditPlus'
Bundle 'L9'  

"display function name in the title bar/or the status l"ine
Bundle 'ctags.vim'
"source code browser
"Bundle 'taglist.vim'
"do all your insert-mode completion with Tab
Bundle 'SuperTab'
"display tags of the current file ordered by scope
Bundle 'TagBar'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
"the ultimate vim status utility
"Bundle 'Powerline'
"Bundle 'Lokaltog/vim-powerline'
" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
"Bundle 'tpope/vim-fugitive'  
"Bundle 'Lokaltog/vim-easymotion'  
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
"Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/vim-powerline'
" c) 指定非Github的Git仓库的插件，需要使用git地址  
"Bundle 'git://git.wincent.com/command-t.git'  
      
" d) 指定本地Git仓库中的插件  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
      
filetype plugin indent on     " required! 


"Powerline
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

" CTags的设定
"let Tlist_Sort_Type = "name"    " 按照名称排序  
"let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
"let Tlist_Compart_Format = 1    " 压缩方式  
"let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
"let tagbar_Exit_OnlyWindow = 1   "如果taglist窗口是最后一个窗口，则退出vim  
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
"autocmd FileType h,cpp,cc,c set tags+=~/code/c_and_cpp
"let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
set tags+=~/code/tags
set tags=tags;
set autochdir
"默认打开Taglist 
"let Tlist_Auto_Open=1 

"tagbar
"nmap <F3> :TagbarToggle<CR>
nmap tb :TagbarToggle<CR>
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_compact=1

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx 
"call tagbar#autoopen()
"
"NERDTreeToggle

"设置NERDTree子窗口宽度
"
"letNERDTreeWinSize=20
"
""设置NERDTree子窗口位置

"letNERDTreeWinPos="left"
"
"NERD-tree
"nmap <F4> :NERDTreeToggle<CR>
nmap nt :NERDTreeToggle<CR>
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
