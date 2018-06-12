syn match tomlLabel /\v([[:alnum:]_-]+|'[^']*'|"[^"]*")(\s*\.\s*([[:alnum:]_-]+|'[^']*'|"[^"]*"))*\s*\=/me=e-1 display

hi tomlTable cterm=bold ctermfg=166 guifg=#CB4B16
hi tomlTableArray cterm=bold ctermfg=166 guifg=#CB4B16
hi tomlLabel ctermfg=32 guifg=#268BD2
hi tomlString ctermfg=107 guifg=#919E6B

" Value-less key, may end with a comment
syn match tomlInvalidLabeL /=\s*[,}\]#\n]/ display

" Key-less value
syn match tomlInvalidLabeL /[{[,]\s*=/ display
syn match tomlInvalidLabeL /^\s*=/ display

" In case of a value-less key followed by a key-less value, only the first
" will match. That shouldnt be a problem, as the second would be reported as
" soon as the first is fixed

" Non-ascii, non quoted
syn match tomlInvalidLabeL /\v(([[:alnum:]_-]+|'[^']*'|"[^"]*")\s*\.\s*)*\zs[^"' \t[:alnum:]_-]+\ze(\s*\.\s*([[:alnum:]_-]+|'[^']*'|"[^"]*"))*\s*\=/ display

hi tomlInvalidLabeL ctermbg=9
