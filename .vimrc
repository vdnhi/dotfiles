set nocompatible              " be iMproved, required
set exrc
set encoding=utf-8
filetype off                  " required

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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" added nerdtree
Plugin 'scrooloose/nerdtree'

" added vim-scala for scala syntax
Plugin 'derekwyatt/vim-scala'

" added MatchTagAlways to highlight html/xml tag
Plugin 'Valloric/MatchTagAlways'

" added auto-pairs
Plugin 'jiangmiao/auto-pairs'

" added YAJS 
Plugin 'othree/yajs.vim'

" added Vim-jsx
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'Valloric/YouCompleteMe'

Plugin 'zxqfl/tabnine-vim'

Plugin 'dracula/vim',{'name':'dracula'}

Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
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
"
""""""""""""""""" vuducnhi-vimrc """"""""""""""""
syntax enable
set hidden
set backspace=2
set autoindent
set smartindent
set ruler 		" show cursor position in bottom line
set number relativenumber      " turn hybrid (both relative and vanilla) line numbers on"
set nu rnu
set mouse=a
set hlsearch		" highlight search result
set noswapfile

" y and d put stuff into system clipboard (so that other apps can see it)
set clipboard=unnamedplus
set wrap
set textwidth=80
set cindent
set timeoutlen=100

" tab related stuffs
set shiftwidth=2 	" tabsize = 2
set expandtab
set softtabstop=2
set shiftround		" when shifting non-aligned set of lines, align them to next tabstop

" searching
set incsearch 		" show first match when start typing
set ignorecase 		" default should ignore case 
set smartcase 		" use case sensitive if i use uppercase 

" Open new split to right/bottom
set splitbelow
set splitright

" Cursor setting
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


"" You Complete Me
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_max_diagnostics_to_display=0
let g:ycm_use_clangd=0

:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
:nnoremap <C-t> :terminal<CR>

" Format json
com! FormatJSON %!python3 -m json.tool

let g:airline_theme='simple'

