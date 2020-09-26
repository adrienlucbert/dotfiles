runtime! archlinux.vim

" GENERAL SETTINGS
set nu rnu
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set clipboard=exclude:.*
set backspace=2

syntax on
colorscheme gruvbox 
set bg=dark

let g:colorizer_auto_color = 1
let g:ctrlp_custom_ignore = 'node_modules\|git'
let mapleader=" "

" markdown-preview config
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

call plug#begin('~/.vim/plugged')

"Plug 'jiangmiao/auto-pairs'
"Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'Nero-F/vim-tek-header'
Plug 'chrisbra/Colorizer'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'romainl/vim-qf'
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'
"Plug 'tpope/vim-fugitive'
"Plug 'easymotion/vim-easymotion'
"Plug 'vim-vdebug/vdebug'
Plug 'dyng/ctrlsf.vim'

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

" EasyMotion
" TODO

" Tab bindings
nmap <silent> <c-t> :tabnew<CR>
nmap <silent> <c-w> :tabclose<CR>

" Make alias
"cnoreabbrev make<CR> make<CR><CR>
map <f4> :make 
map <f5> :make debug

" Commenting blocks of code.
augroup commenting_blocks_of_code
    autocmd!
    autocmd FileType c,cpp,hpp,java,js,vue,ts,php   let b:comment_leader = '// '
    autocmd FileType sh,ruby,python                 let b:comment_leader = '# '
    autocmd FileType conf,fstab                     let b:comment_leader = '# '
    autocmd FileType tex                            let b:comment_leader = '% '
    autocmd FileType mail                           let b:comment_leader = '> '
    autocmd FileType vim                            let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Indent lines
nmap <silent> <tab> :><CR>
nmap <silent> <s-tab> :<<CR>

vmap <silent> <tab> :><CR>
vmap <silent> <s-tab> :<<CR>

" CtrlSF
nmap <c-s-f> :CtrlSF 
