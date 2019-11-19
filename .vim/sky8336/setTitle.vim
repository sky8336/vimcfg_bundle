" SetTitle.vim - Vim SetTitle function.
"
" Copyright (c) 2019 sky8336. All Rights Reserved.
"
" Maintainer: sky8336 <1919592995@qq.com>
"    Created: 2019-08-24
"------------------------------
" LastChange: 2019-11-19
"    Version: v0.0.04
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" SetTitle
func SetTitle()
	if expand("%:e") == 'sh'
		call append(0,"\#!/bin/bash")
		call append(1,"#")
		call append(2,"# ".expand("%:t"))
		call append(3,"#")
		call append(4,"# Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(5,"#")
		call append(6,"# History:")
		call append(7,"#    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(8,"#")
		call append(9,"# Maintainer: Eric MA <eric@email.com>")
		call append(10,"#    Created: ".strftime("%Y-%m-%d"))
		call append(11,"# LastChange: ".strftime("%Y-%m-%d"))
		call append(12,"#    Version: v0.0.01")
		call append(13,"#")
	elseif expand("%:e") == 'py'
		call append(0,"#!/usr/bin/env python")
		call append(1,"# coding=utf-8")
		call append(2,"#")
		call append(3,"# ".expand("%:t"))
		call append(4,"#")
		call append(5,"# Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(6,"#")
		call append(7,"# History:")
		call append(8,"#    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(9,"#")
		call append(10,"# Maintainer: Eric MA <eric@email.com>")
		call append(11,"#    Created: ".strftime("%Y-%m-%d"))
		call append(12,"# LastChange: ".strftime("%Y-%m-%d"))
		call append(13,"#    Version: v0.0.01")
		call append(14,"#")
	elseif expand("%:e") == 'cpp'
		call append(0,"/*")
		call append(1," * ".expand("%:t"))
		call append(2," *")
		call append(3," * Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(4," *")
		call append(5," * History:")
		call append(6," *    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(7," *")
		call append(8," * Maintainer: Eric MA <eric@email.com>")
		call append(9," *    Created: ".strftime("%Y-%m-%d"))
		call append(10," * LastChange: ".strftime("%Y-%m-%d"))
		call append(11," *    Version: v0.0.01")
		call append(12," *")
		call append(13," */")
		call append(14,"#include <iostream>")
		"call append(line("."), "")
	elseif expand("%:e") == 'cc'
		call append(0,"/*")
		call append(1," * ".expand("%:t"))
		call append(2," *")
		call append(3," * Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(4," *")
		call append(5," * History:")
		call append(6," *    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(7," *")
		call append(8," * Maintainer: Eric MA <eric@email.com>")
		call append(9," *    Created: ".strftime("%Y-%m-%d"))
		call append(10," * LastChange: ".strftime("%Y-%m-%d"))
		call append(11," *    Version: v0.0.01")
		call append(12," *")
		call append(13," */")
		call append(14,"#include <iostream>")
		"call append(line("."), "")
	elseif expand("%:e") == 'c'
		call append(0,"/*")
		call append(1," * ".expand("%:t"))
		call append(2," *")
		call append(3," * Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(4," *")
		call append(5," * History:")
		call append(6," *    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(7," *")
		call append(8," * Maintainer: Eric MA <eric@email.com>")
		call append(9," *    Created: ".strftime("%Y-%m-%d"))
		call append(10," * LastChange: ".strftime("%Y-%m-%d"))
		call append(11," *    Version: v0.0.01")
		call append(12," *")
		call append(13," */")
		call append(14,"#include <stdio.h>")
		"call append(line("."), "")
	elseif expand("%:e") == 'h'
		call append(0,"/*")
		call append(1," * ".expand("%:t"))
		call append(2," *")
		call append(3," * Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(4," *")
		call append(5," * History:")
		call append(6," *    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(7," *")
		call append(8," * Maintainer: Eric MA <eric@email.com>")
		call append(9," *    Created: ".strftime("%Y-%m-%d"))
		call append(10," * LastChange: ".strftime("%Y-%m-%d"))
		call append(11," *    Version: v0.0.01")
		call append(12," *")
		call append(13," */")
		call append(14, "")
		"call append(15, "#ifndef _".tr(toupper(expand("%:r")), "/", "_")."_H")
		"call append(16, "#define _".tr(toupper(expand("%:r")), "/", "_")."_H")
		call append(15, "#ifndef _".substitute(tr(toupper(expand("%:r")), "/", "_"),"\\.._","","g")."_H")
		call append(16, "#define _".substitute(tr(toupper(expand("%:r")), "/", "_"),"\\.._","","g")."_H")
		call append(17, "")
		call append(18, "")
		call setline(20, "#endif")
		normal G2k
	elseif expand("%:e") == 'hpp'
		call append(0,"/*")
		call append(1," * ".expand("%:t"))
		call append(2," *")
		call append(3," * Copyright (C) 2018-2023 Eric MA  <eric@company.com>. All Rights Reserved.")
		call append(4," *")
		call append(5," * History:")
		call append(6," *    ".strftime("%Y/%m/%d")." - [Eric MA] Created file")
		call append(7," *")
		call append(8," * Maintainer: Eric MA <eric@email.com>")
		call append(9," *    Created: ".strftime("%Y-%m-%d"))
		call append(10," * LastChange: ".strftime("%Y-%m-%d"))
		call append(11," *    Version: v0.0.01")
		call append(12," *")
		call append(13," */")
		call append(14, "")
		"call append(15, "#ifndef _".tr(toupper(expand("%:r")), "/", "_")."_H")
		"call append(16, "#define _".tr(toupper(expand("%:r")), "/", "_")."_H")
		call append(15, "#ifndef _".substitute(tr(toupper(expand("%:r")), "/", "_"),"\\.._","","g")."_H")
		call append(16, "#define _".substitute(tr(toupper(expand("%:r")), "/", "_"),"\\.._","","g")."_H")
		call append(17, "")
		call append(18, "")
		"call append(19, "#endif")
		call setline(20, "#endif")
		normal G2k
	endif
	"echohl WarningMsg | echo "Successful in adding copyright." | echohl None
endfunc

"create file settings
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()"

"新建文件后，自动定位到文件末尾
"autocmd BufNewFile * normal G
