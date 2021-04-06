call plug#begin('~/.vim/plugged')

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim' " automatic html tag renaming
Plug 'tomtom/tcomment_vim' " comments
Plug 'godlygeek/tabular' " align items

" debug
Plug 'puremourning/vimspector' " multi-language debugger interface

" snippets
Plug 'SirVer/ultisnips'

" languages
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nikvdp/ejs-syntax' " ejs syntax highlighting

" git
Plug 'tpope/vim-fugitive' " git power
Plug 'junegunn/gv.vim' " git commit browser
Plug 'airblade/vim-gitgutter' " git gutter

" movements
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'psliwka/vim-smoothie'
" Plug 'Konfekt/FastFold'

" colorschemes
Plug 'sainnhe/edge'
Plug 'nanotech/jellybeans.vim'

" cosmetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" misc
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

call plug#end()
