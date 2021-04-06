let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :vimspectorReset<CR>
nmap <leader>de :vimspectorEval
nmap <leader>dw :vimspectorWatch
nmap <leader>do :vimspectorShowOutput
