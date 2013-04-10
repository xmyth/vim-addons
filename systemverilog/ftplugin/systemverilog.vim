" Vim filetype plugin file
" Language:	SystemVerilog (superset extension of Verilog)
" Maintainer:	
" Last Change:	copied from dlcarroll's ftplugin/verilog.vim
" URL:		

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Undo the plugin effect
let b:undo_ftplugin = "setlocal fo< com< tw<"
    \ . "| unlet! b:browsefilter b:match_ignorecase b:match_words"

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croqlm1

" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://

" Format comments to be up to 78 characters long
if &textwidth == 0 
  setlocal tw=78
endif

set cpo-=C

" Win32 can filter files in the browse dialog
if has("gui_win32") && !exists("b:browsefilter")
  let b:browsefilter = "Verilog Source Files (*.v)\t*.v\n" .
	\ "All Files (*.*)\t*.*\n"
endif

" Let the matchit plugin know what items can be matched.
if exists("loaded_matchit")
  let b:match_ignorecase=0
  let b:match_words=
	\ '\<begin\>:\<end\>,' .
	\ '\<if\>:\<else\>,' .
	\ '\<module\>:\<endmodule\>,' .
	\ '\<class\>:\<endclass\>,' .
	\ '\<program\>:\<endprogram\>,' .
	\ '\<clocking\>:\<endclocking\>,' .
	\ '\<property\>:\<endproperty\>,' .
	\ '\<sequence\>:\<endsequence\>,' .
	\ '\<package\>:\<endpackage\>,' .
	\ '\<covergroup\>:\<endgroup\>,' .
	\ '\<primitive\>:\<endprimitive\>,' .
	\ '\<generate\>:\<endgenerate\>,' .
	\ '\<interface\>:\<endinterface\>,' .
	\ '\<function\>:\<endfunction\>,' .
	\ '\<task\>:\<endtask\>,' .
	\ '\<case\>\|\<casex\>\|\<casez\>\|\<randcase\>:\<endcase\>,' .
	\ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
	\ '`ifdef\>:`else\>:`endif\>,'
endif
