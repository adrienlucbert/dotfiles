" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

set nu rnu
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set autochdir
"set clipboard=unnamedplus

syntax on
" colorscheme OceanicNext
" colorscheme onedark
colorscheme gruvbox 
set bg=dark

let g:colorizer_auto_color = 1
let mapleader=" "

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
" let skip_defaults_vim=1

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Nero-F/vim-tek-header'
Plug 'chrisbra/Colorizer'
Plug 'ludovicchabant/vim-gutentags'
Plug 'romainl/vim-qf'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Bindings

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Move lines up and down
nmap <silent> <S-j> :m .+1<CR>==
nmap <silent> <S-k> :m .-2<CR>==

" Tab bindings
nmap <silent> <c-t> :tabnew<CR>
nmap <silent> <c-w> :tabclose<CR>

