" COC
" use tab to navigate completions and enter to confirm
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" confirm completion with Enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" use <tab> for trigger completion and navigate to the next complete item
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use c-space to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Clang-format
autocmd FileType c,cpp,h,hpp nnoremap <leader>x :ClangFormat<CR>
autocmd FileType c,cpp,h,hpp ClangFormatAutoEnable
