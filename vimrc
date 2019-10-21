set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'tpope/vim-surround' 
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc -ulimit -Wall -Wno-unused-result  -O2 % -o %:r && ./%:r <CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
syntax on
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
set relativenumber
set nu
set clipboard=
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartcase
set t_Co=256
set background=dark
set noswapfile
map <C-a> <esc>ggVG<CR>
set belloff=all
"colorscheme afterglow
let g:quantum_black=1
set background=dark
set termguicolors
set backspace=2
set backspace=indent,eol,start " backspace over everything in insert mode
colorscheme quantum
syntax on
