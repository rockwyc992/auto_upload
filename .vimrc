let g:Number = "102502044"

"F4 打包在桌面 + 自動上傳lms
imap <F4> <ESC><F4>
map  <F4> :call Zip_ce1002()<CR>

"F5 執行java檔
imap <F5> <ESC><F5>
map  <F5> :call Run_ce1002()<CR>

"F9 編譯並執行
imap <F9> <ESC><F9>
map  <F9> :call Gcc_ce1002()<CR>

func! Gcc_ce1002()
	exec "w"
	if &filetype == 'java' && Is_ce1002()
		let g:Cname = expand("%:t:r")
		let	 g:Pname = substitute(g:Cname, ".*", "\\L\\0", "")
		exec "!javac -d ~/code/java/ce1002/bin %" 
		Run_ce1002()
	endif
endfun

func! Zip_ce1002()
	exec "w"

	if &filetype == 'java' && Is_ce1002()
		let g:Cname = expand("%:t:r")
		let	g:Pname = substitute(g:Cname, ".*", "\\U\\0", "")
		exec "!zip.ce1002 ".g:Cname
		exec "!upload.ce1002 ".g:Cname
	endif
endfun

func! Run_ce1002()
	exec "w"
	if &filetype == 'java' && Is_ce1002()
		let g:Cname = expand("%:t:r")
		let	g:Pname = substitute(g:Cname, ".*", "\\U\\0", "")
		exec "!java -classpath ~/code/java/ce1002/bin/ ce1002.".g:Pname.".s".g:Number.g:Cname
	endif
endfunc

func! Is_ce1002()
	return !empty(matchstr(expand("%:p"), "/code/java/ce1002/src/ce1002/"))
endfunc

