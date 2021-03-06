set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
 " required!
 Plugin 'gmarik/Vundle.vim'

 " My Plugins here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Plugin 'tpope/vim-rails.git'
" Plugin 'ack.vim'
 Plugin 'plasticboy/vim-markdown'
 Plugin 'groenewege/vim-less'
 Plugin 'editorconfig-vim'
 Plugin 'bling/vim-airline'
 Plugin 'airblade/vim-gitgutter'
 " Plugin 'kien/ctrlp.vim'
 " vim-scripts repos
 " Plugin 'L9'
 " Plugin 'FuzzyFinder'
 Plugin 'scrooloose/NERDTree'
 Plugin 'scrooloose/NERDCommenter'
 Plugin 'scrooloose/syntastic'
 Plugin 'digitaltoad/vim-jade'
 Plugin 'Tabular'
 " Plugin 'Neocomplete'
 " non github repos
 Plugin 'git://git.wincent.com/command-t.git'
 " ...
call vundle#end()            " required
filetype plugin indent on     " required!

"let g:colors_name = "tomorrow-night-bright"
set guifont=Menlo:12
let g:colors_name = "obsidian"
set background=dark
" let g:colors_name = "twilight"

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
vnoremap <C-c> "*y


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

" Airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#estensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts=1

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=markdown
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
autocmd BufRead,BufNewFile *.jade set ft=jade

" Whitespace fixes
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Vimcourage
" function! Vimcourage()
"     silent execute "!echo Good job"
" endfunction

" autocmd BufWritePost * call Vimcourage()

set undolevels=20
set title

set noerrorbells
set noswapfile
set nobackup
nnoremap ; :

nnoremap <leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" Tabularize
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

" Paste mode
set pastetoggle=<F6>

"Ctrl P
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
