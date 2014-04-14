filetype off

let g:colors_name = "tomorrow-night-bright"
set guifont=Menlo:12

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set modelines=0
syntax enable
set nu
set ruler
imap ^[OA <ESC>ki
imap ^[OB <ESC>ji
imap ^[OC <ESC>li
imap ^[OD <ESC>hi
set nocompatible               " be iMproved
vnoremap <C-c> "*y

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" custom sign column color
" hi SignColumn guibg=#020202 ctermbg=233

 "Some tips from http://stevelosh.com/blog/2010/09/coming-home-to-vim/"

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
" set relativenumber
set cursorline

let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set formatoptions=qrn1
set linebreak

nnoremap j gj
nnoremap k gk

"User customizations"

" Strips whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Select pasted text
nnoremap <leader>v V`]

"Window splitting remap"
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffers
nmap <leader>T :enew<cr>
nmap gy :bnext<CR>
nmap gt :bprevious<cr>
nmap gd :bdelete<cr>
nmap <leader>bl :ls<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#estensions#tabline#fnamemod = ':t'

nnoremap <leader>a :Ack
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.test set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php
autocmd BufRead,BufNewFile *.profile set filetype=php
autocmd BufRead,BufNewFile *.view set filetype=php
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
autocmd BufRead,BufNewFile *.twig set ft=htmldjango
autocmd BufRead,BufNewFile *.rabl set ft=ruby

" Whitespace fixes
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set undolevels=20
set title

set noerrorbells
set noswapfile
set nobackup
nnoremap ; :

nnoremap <leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
" let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'ack.vim'
 Bundle 'plasticboy/vim-markdown'
 Bundle 'groenewege/vim-less'
 Bundle 'editorconfig-vim'
 Bundle 'bling/vim-airline'
 Bundle 'airblade/vim-gitgutter'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'NERDTree'
 Bundle 'NERDCommenter'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
