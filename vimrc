set nocompatible
filetype plugin on
filetype indent on
set autoread
set mouse=a
set noswapfile
set nowritebackup

syntax on

set fileencodings=ucs-bom,utf-8,chinese,default
set tags=tags;

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline


set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab

set ai
set si
set cindent
set wrap

let Tlist_Use_Right_Window     = 1
let Tlist_Compart_Format       = 1
let Tlist_Exit_OnlyWindow      = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Enable_Fold_Column   = 0

autocmd BufEnter * lcd %:p:h

function! INC(increment)
    let linenumber = line(".")
    let linenumber = linenumber - a:increment
    return linenumber
endfunction

set runtimepath+=~/.vim/addons/vim-addon-manager
call vam#ActivateAddons(["taglist", 
            \            "powerline", 
            \            "tabular", 
            \            "surround", 
            \            "Command-T", 
            \            "l9", 
            \            "fuzzyfinder", 
            \            "tlib", 
            \            "vim-addon-mw-utils", 
            \            "snipmate", 
            \            "snippets", 
            \            "nerdcommenter", 
            \            "systemverilog", 
            \            "fencview"], 
            \            {'auto_install' : 0})
 
let g:Powerline_symbols = 'fancy'
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

autocmd   BufRead,BufNewFile   *.v      set   filetype=systemverilog
autocmd   BufRead,BufNewFile   *.vh     set   filetype=systemverilog
autocmd   BufRead,BufNewFile   *.sv     set   filetype=systemverilog
autocmd   BufRead,BufNewFile   *.svh    set   filetype=systemverilog
autocmd   BufRead,BufNewFile   *.spec   set   filetype=systemverilog
autocmd   BufRead,BufNewFile   *.vg     set   filetype=systemverilog

