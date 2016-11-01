try
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set encoding=utf-8

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    " Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    " own added plugins:
    Plugin 'scrooloose/nerdtree' " file explorer
    map <Leader>n :NERDTreeToggle<CR>
    Plugin 'scrooloose/nerdcommenter' " intensely orgasmic commenting with \
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    Plugin 'tpope/vim-surround'  " bracket completion
    Plugin 'tpope/vim-fugitive'  " Git support
    Plugin 'ctrlpvim/ctrlp.vim' " CTRLP 
    Plugin 'altercation/vim-colors-solarized'  " Solarized color scheme
    Plugin 'timakro/vim-searchant' " color highlighting for search
    Plugin 'tomasr/molokai' " molokai theme
    Plugin 'derekwyatt/vim-fswitch' " switch between header/source
    " vim-fswitch settings
    nnoremap <leader>fsh :FSSplitLeft<CR>
    nnoremap <leader>fsj :FSSplitBelow<CR>
    nnoremap <leader>fsk :FSSplitAbove<CR>
    nnoremap <leader>fsl :FSSplitRight<CR>
    nnoremap <leader>h : FSSplitRight<CR>
    Plugin 'vim-airline/vim-airline' " vim airline
    let g:airline_powerline_fonts = 1
    Plugin 'vim-airline/vim-airline-themes' " vim airline themes
    Plugin 'majutsushi/tagbar' " tagbar
    nmap <Leader>t :TagbarToggle<CR>
    Plugin 'mhinz/vim-startify'
    let g:startify_bookmarks = [ '~/.vimrc']
    Plugin 'mbbill/undotree'
    nnoremap <Leader>u :UndotreeToggle<CR>
    Plugin 'edkolev/tmuxline.vim'
    " let g:tmuxline_powerline_separators = 0
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    " To ignore plugin indent changes, instead use:
    " filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line

catch
    echo "Vundle not installed or incorrectly initialized."
    echo "To install run:"
    echo "git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
endtry

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" fix airline
"let g:airline_powerline_fonts = 1
set laststatus=2

" colorscheme
color elflord

if has('persistent_undo')
    set undofile
    set undodir=~/.vim/undo
endif

syntax on
filetype plugin indent on

set backspace=indent,eol,start

" search settings
set ignorecase   " Default to using case insensitive searches,
set smartcase    " unless uppercase letters are used in the regex.
set hlsearch     " Highlight searches by default.
set incsearch    " Incrementally search while typing a /regex
set showmatch    " When a bracket is inserted, briefly jump to the matching one
" set matchtime=2  " 10ths of a sec to highlight the showmatch

" keeps the visual selection active after indenting
vmap > >gv
vmap < <gv

" split right and below
set splitright
set splitbelow

" mouse scrolling
set mouse=a

" switch between header and source files (old way)
" map <Leader>h :vsplit %<.h <Enter>
" map <Leader>c :vsplit %<.cpp <Enter>

"Information on the following setting can be found with
":help set
set tabstop=4
set expandtab
set autoindent 
set shiftwidth=4  "this is the level of autoindent, adjust to taste
set softtabstop=4
set ruler
set number
set backspace=indent,eol,start
set visualbell
" Uncomment below to make screen not flash on error
" set vb t_vb=""
"

nnoremap <Leader>p :set invpaste paste?<CR>
set pastetoggle=<Leader>p
set showmode

"set statusline+=%{fugitive#statusline()}
if has('unix')
    set t_Co=256
endif
" if has("terminfo")
  " let &t_Co=16
  " let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
  " let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
" else
  " let &t_Co=16
  " let &t_Sf="\<Esc>[3%dm"
  " let &t_Sb="\<Esc>[4%dm"
" endif
