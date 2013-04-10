" my filetype file
if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    au! BufRead,BufNewFile *.spec           setfiletype systemverilog
    au! BufRead,BufNewFile *.svh            setfiletype systemverilog
    au! BufRead,BufNewFile *.vg             setfiletype systemverilog
augroup END

