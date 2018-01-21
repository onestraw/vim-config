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
" Go development plugin for Vim
Plugin 'fatih/vim-go'
" A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'
" A statusline plugin for vim
Plugin 'powerline/powerline'

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
set number
set hlsearch
set noswapfile
set laststatus=2
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

let Tlist_Use_Right_Window = 1

" ~~ IV ~~. configure vim-go
" https://github.com/fatih/vim-go-tutorial
let mapleader = ","
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" :GoInstallBinaries
" :GoMetaLinter
" :GoLint
" :GoFmt
" :GoDoc
" :GoRun
" :GoDef    :   ctrl + ]
" :GoDefPop :   ctrl + t    / ctrl + o
" :GoDecls
" :GoDeclsDir
" :GoFiles
" :GoDeps

let g:go_fmt_command = "goimports"
"let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:go_version_warning = 0
