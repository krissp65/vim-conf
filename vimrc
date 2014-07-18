set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/syntastic' "syntax check comes with python-mode
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'Townk/vim-autoclose'
"Plugin 'klen/python-mode'
Plugin 'ervandew/supertab'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'TaskList.vim'
Plugin 'taglist.vim'

""" Themes
Plugin 'Wombat'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'ShawnHuang/vim-airline-wombat256'


call vundle#end()
filetype plugin indent on

""" Set status line with powerline-fonts
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
set noshowmode
set t_Co=256

""" Configure pymode
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_lint_checkers = ['pyflakes', 'pylint', 'pep8']

""" Configure YouCompleteMe
"let g:ycm_auto_trigger = 1
"let g:ycm_min_num_of_chars_for_completion = 0
"let g:ycm_always_populate_location_list = 0
"set completeopt+=menuone,longest,preview
"set wildmode=longest,list:longest
"let g:ycm_path_to_python_interpreter = 'python3'

""" Configure TagList
let Tlist_Use_Right_Window = 1

""" Miscelanous settings
autocmd! bufwritepost .vimrc source %  "reread vimrc on save
syntax on
colorscheme wombat256mod
set backspace=indent,eol,start
set history=500
set ruler
set showcmd
set incsearch
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set hlsearch
set ignorecase
set autoindent
set cmdheight=2
set showmatch
set nobackup
set noswapfile
set wildmenu
set wildmode=full


""" highlight characters past column 100
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%100v.*/
    autocmd FileType python set nowrap
augroup END


""" Mappings
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<CR>

imap A <ESC>ki
imap B <ESC>ji
imap C <ESC>li
imap D <ESC>hi

map OP <F1>
map OQ <F2>
map OR <F3>
map OS <F4>

noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :TlistToggle<CR>
noremap <F4> :TagbarToggle<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h 

