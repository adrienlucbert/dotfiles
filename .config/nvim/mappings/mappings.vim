" Map Alt+Arrows to move lines
nnoremap <A-k> :m-2<cr>==
nnoremap <A-j> :m+<cr>==
vnoremap <A-k> :m '<-2<cr>gv=gv
vnoremap <A-j> :m '>+1<cr>gv=gv

" Indent lines
nnoremap <silent> <tab> :><cr>
nnoremap <silent> <s-tab> :<<cr>
vnoremap <silent> <tab> :><cr>
vnoremap <silent> <s-tab> :<<cr>

" Use ctrl-[hjkl] to select the active split
nnoremap <silent> <c-k> :wincmd k<cr>
nnoremap <silent> <c-j> :wincmd j<cr>
nnoremap <silent> <c-h> :wincmd h<cr>
nnoremap <silent> <c-l> :wincmd l<cr>

" Manage tabs
nnoremap T :tabnew<cr>
nnoremap H :tabprev<cr>
nnoremap L :tabnext<cr>
nnoremap W :tabclose<cr>

" Disable search highlighting
nnoremap <silent><esc><esc> :nohls<cr>
