autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips/']

let g:UltiSnipsExpandTrigger = ''
let g:UltiSnipsListSnippets = '<c-s>'
let g:UltiSnipsJumpForwardTrigger = ''
let g:UltiSnipsJumpBackwardTrigger = ''
