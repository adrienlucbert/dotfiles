call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp' " lsp

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'puremourning/vimspector' " multi-language debugger interface

Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jackguo380/vim-lsp-cxx-highlight' " coc-clangd semantic highlighting
Plug 'nikvdp/ejs-syntax'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

Plug 'AndrewRadev/tagalong.vim'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'psliwka/vim-smoothie'

Plug 'sainnhe/edge'

call plug#end()
