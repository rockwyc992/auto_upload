let s:Number = "102502044"

"F4 打包在桌面 + 自動上傳lms
imap <F4> <ESC><F4>
map  <F4> :call Zip_ce1002()<CR>

func! Zip_ce1002()
	exec "w"

	if &filetype == 'java' && Is_ce1002()
		let s:Cname = expand("%:t:r")
		let	s:Pname = substitute(g:Cname, ".*", "\\U\\0", "")
		exec "!zip.ce1002 ".s:Cname
		exec "!upload.ce1002 ".s:Cname
	endif
endfun

func! Is_ce1002()
	return !empty(matchstr(expand("%:p:h"), "ce1002"))
endfunc

