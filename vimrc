" ~~ I ~~. configure Vundle (Vim plugin manager)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vim plugin manager.
Plugin 'VundleVim/Vundle.vim'
" Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" A tree explorer plugin for vim
Plugin 'scrooloose/nerdTree'
" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype on

" ~~ II ~~. configure shortcuts for plugins
map <C-n> :NERDTreeToggle<CR>


" ~~ III ~~. configure vim 
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Maps Ctrl-[h,j,k,l] to switch window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" CTRL-W +	   increase current window height N lines
" CTRL-W -	   decrease current window height N lines
" CTRL-W <	   decrease current window width N columns
" CTRL-W =	   make all windows the same height & width
" CTRL-W >	   increase current window width N columns

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set autoindent
set nu
set noswapfile
set laststatus=2

