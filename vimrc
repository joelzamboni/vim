set nocompatible                    " use VIM settings - probably not necessary
set backspace=indent,eol,start      " allow backspace
set history=1000                    " number of commands in history
set wrap                            " dont wrap lines
set linebreak                       " wrap lines at convenient points
set smartindent                     " smart autoindenting when starting a new line
set shiftwidth=2                    " number of spaces to use for each step of (auto)indent
set tabstop=2                       " number of spaces that a Tab in the file counts for
set expandtab                       " use spaces to insert a Tab
set smarttab                        " insert or delete (backspace) Tabs
set autoindent                      " copy indent from current line when starting a new line
call pathogen#infect()              " call pathogen
filetype plugin on                  " load file type plugin
filetype indent on                  " load file indent plugin
syntax on                           " enable syntax
set encoding=utf-8                  " sets the character encoding
colorscheme elflord                 " seting color theme
set mouse=a                         " set all mouse modes
set ttymouse=xterm2                 " mouse compatible term
set visualbell                      " no beep
set colorcolumn=80                  " create a line on column 80
set showcmd                         " show incomplete cmds down the bottom
set showmode                        " show current mode down the botto
set number                          " show line numbers (set nonumber to remove)
set list                            " display tabs and trailing spaces
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅  " define symbolx for tabs
set incsearch                       " find the next match as we type the search
set hlsearch                        " hilight searches by default
set ignorecase
set wildmode=list:longest           " make cmdline tab completion similar to bash
set wildmenu                        " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~         " stuff to ignore when tab completing
set clipboard=unnamedplus           " use X11 clipboard, remember use +yy or +p
set cursorcolumn                    " for Column
set cursorline                      " for showing the line.
" Open terminal bellow all splits :bterm
cabbrev bterm bo term
" Customization to modules
" open NERDTree with <ne>
nmap ne :NERDTree<cr>
nmap nc :NERDTreeClose<cr>
" improved split navegation Ctrl+key, instead of Ctrl+w+key
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set makeprg=/usr/bin/env\ bash\ %   " set make to bash
set autowrite                       " automatic write before make
set directory=~/tmp                 " save swp in ~/tmp
" Ctrl+B to run the current file
nmap <C-B> :w <cr> :!./%<cr>
autocmd BufNewFile,BufReadPost *.md set filetype=markdown        " md files as markdown
