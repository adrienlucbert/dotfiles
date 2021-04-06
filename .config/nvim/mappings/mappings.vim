" Indent lines
nnoremap <silent> <tab> :><cr>
nnoremap <silent> <s-tab> :<<cr>
vnoremap <silent> <tab> :><cr>
vnoremap <silent> <s-tab> :<<cr>

" Manage tabs
nnoremap T :tabnew<cr>
nnoremap H :tabprev<cr>
nnoremap L :tabnext<cr>
nnoremap W :tabclose<cr>

" Buffer switching
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

" Remove search highlight with //
nnoremap <silent> // :nohlsearch<CR>

" TComment
map <Leader>c <C-_><C-_>

" Copy entire file to clipboard
nnoremap Y ggVG"+y

" Clang-format
autocmd FileType c,cpp,h,hpp nnoremap <leader>x :ClangFormat<CR>
autocmd FileType c,cpp,h,hpp ClangFormatAutoEnable
