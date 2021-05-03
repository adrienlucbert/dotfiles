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

" Copy entire file to clipboard
nnoremap Y ggVG"+y

" In visual block mode, enter insert mode with i instead of I
xnoremap i I

" Unbind annoying Ex mode
nmap Q <Nop>
