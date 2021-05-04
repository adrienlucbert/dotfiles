autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips/']
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsListSnippets="<nop>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
