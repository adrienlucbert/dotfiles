" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore deps -g ""'
noremap <c-p> :call fzf#vim#files('', fzf#vim#with_preview('right'))<CR>
noremap <c-j> :call fzf#vim#ag('', '--ignore deps', fzf#vim#with_preview('right'))<CR>

nnoremap / :BLines<CR>
nnoremap <c-j> :Ag<CR>
nnoremap <c-b> :Buffer<CR>
nnoremap <leader>g :Rg<CR>
noremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
