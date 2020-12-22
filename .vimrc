runtime! archlinux.vim

" GENERAL SETTINGS
set nu rnu " relative line numbers
set ic " case insensitive searches
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
set clipboard=unnamedplus
set backspace=2
" copy selections to X11 clipboard
set guioptions+=a

syntax on
colorscheme nord
"set bg=dark

let g:ctrlp_custom_ignore = 'node_modules\|\.git$\|.github\|build\|dist\|vendor'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let mapleader=" "

" markdown-preview config
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1

call plug#begin('~/.vim/plugged')

Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'jiangmiao/auto-pairs'
"Plug 'vim-airline/vim-airline'
"Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'Nero-F/vim-tek-header'
Plug 'ap/vim-css-color'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'romainl/vim-qf'
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-vinegar'
Plug'ctrlpvim/ctrlp.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'morhetz/gruvbox'
"Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive'
"Plug 'easymotion/vim-easymotion'
"Plug 'vim-vdebug/vdebug'
Plug 'dyng/ctrlsf.vim'
Plug 'puremourning/vimspector'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'rhysd/vim-clang-format'
Plug 'airblade/vim-gitgutter'
Plug 'kiteco/vim-plugin'
Plug 'tpope/vim-commentary'

call plug#end()

" Bindings

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Move lines up and down
" TODO: change to Alt
nmap <silent> <s-j> :m .+1<CR>==
nmap <silent> <s-k> :m .-2<CR>==

" EasyMotion
" TODO

" Tab bindings
nmap <silent> <c-t> :tabnew<CR>
nmap <silent> <c-w> :tabclose<CR>

" Make alias
"cnoreabbrev make<CR> make<CR><CR>

" Indent lines
nmap <silent> <tab> :><CR>
nmap <silent> <s-tab> :<<CR>

vmap <silent> <tab> :><CR>
vmap <silent> <s-tab> :<<CR>

" CtrlSF
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_position = 'left'
let g:ctrlsf_auto_close = 1
nmap <c-f> :CtrlSF<space>

" Vimspector
let g:vimspector_install_gadgets = ['CodeLLDB']
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Continue()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval 
nmap <leader>dw :VimspectorWatch 

" coc
"nnoremap <silent> K :call CocActionAsync('doHover')<CR>
"Configure coc.nvim to use tab to navigate completions and enter to confirm
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" confirm completion with Enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use c-space to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()

" NerdTree
" toggle nerdtree visibility
map <C-b> :NERDTreeToggle<CR>

" close vim when the only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting

" Goyo
"nmap <silent> <c-k> :Goyo<CR>

" Execute a macro on a visually selected range of lines
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
endfunction

" clang-format
nmap <silent> <C-S-i> :ClangFormat<CR>

" visual-multi (multi cursor)
let g:VM_maps = {}

let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'
