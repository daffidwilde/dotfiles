"""""""""""""""""""""""""""""""""""""""""
" Vundle stuff "
"""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



"""""""""""""""""""""""""""""""""""""""""
" Plugins & Bundles "
"""""""""""""""""""""""""""""""""""""""""

" Code completion
Plugin 'maralla/completor.vim'

" Alt to powerline
Plugin 'bling/vim-airline'

" NERD tree: for navigating trees
Plugin 'scrooloose/nerdtree'

" ctrlp: fuzzy searching of files
Plugin 'kien/ctrlp.vim'

" Help out with quotes/parentheses in some way...
Plugin 'tpope/vim-surround'

" Shows signs for added, modded and removed lines
Plugin 'airblade/vim-gitgutter'

" Auto-close of parentheses and such
Plugin 'Townk/vim-autoclose'

" Solarized colours
Plugin 'altercation/vim-colors-solarized'

" Linting
" `pip install proselint`
Plugin 'w0rp/ale'
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'rst': ['rstcheck', 'text/language_check', 'proselint']}
let g:ale_linters = {'md': ['textlint', 'text/language_check', 'proselint']}
let g:ale_linters = {'python': ['pylint', 'flake8']}

" Vim-fat-finger: common spelling mistakes
"Bundle 'chip/vim-fat-finger'

" Vim-LaTeX
Plugin 'lervag/vimtex'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just 
" 			:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to 
" 			auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Line numbers
set nu
" Syntax colouring
syntax on
" Unsaved file prompt
set confirm
" Incremental, smarter search
set incsearch
set hlsearch
set ignorecase smartcase
" Use C-c to copy to clipboard
vmap <C-c> "+y
" Press F2 before pasting large blocks of code
set pastetoggle=<F2>
" Where am I in the file?
set ruler
" Exiting typos
cabbrev W w
cabbrev Wq wq
cabbrev Q q
" Sort out tabs and indentation
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
" Colour schemes
set background=dark
colorscheme desert 
" Setting default row/column and width
set colorcolumn=80
:set textwidth=80
" Activate mouse-click
set mouse=a
" Lots of colours (256)
set t_Co=256
" Set default tex filetype as 'tex' rather than 'plaintext'
let g:tex_flavor = 'tex'
" Spell check
":set spelllang=en_gb spell
augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd BufRead,BufNewFile *.md setlocal spell
augroup END
augroup texSpell
    autocmd!
    autocmd FileType tex setlocal spell
    autocmd BufRead,BufNewFile *.tex setlocal spell
augroup END
