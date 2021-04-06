let mapleader=","

""" GUI -------------------------------------------------------------------- {{{

set hidden
" set foldmethod=syntax
set guicursor=
set number
set relativenumber
set nowrap
set termguicolors
set scrolloff=999
set completeopt=menuone,noinsert,noselect,preview
set signcolumn=yes
set colorcolumn=80

""" }}}

""" Edition ---------------------------------------------------------------- {{{

set noerrorbells
set clipboard+=unnamedplus
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

""" }}}

""" Search ----------------------------------------------------------------- {{{

" set incsearch
" set nohlsearch:S
set inccommand=split
set smartcase
set wildignorecase
set wildignore+=*.o,*.gcno,*.gcda,node_modules,.git
set ignorecase

""" }}}

""" Backup ----------------------------------------------------------------- {{{

set backup
set undofile
set noswapfile

set undodir=~/.nvim/tmp/undo/
set backupdir=~/.nvim/tmp/backup/
set directory=~/.nvim/tmp/swap/

if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif

""" }}}

" Stop randomly `chdir`ing
set noautochdir
augroup AutoChdir
  autocmd!
augroup END
