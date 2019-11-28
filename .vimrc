set nocompatible              " be iMproved, required
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
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Syntastic'
Plugin 'ctrlp.vim'
Plugin 'cohlin/vim-colorschemes'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-markdown'
Plugin 'tfnico/vim-gradle'
Plugin 'fatih/vim-go'

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

" Colors
syntax on

" Leader Shortcuts
let mapleader=","
inoremap jk  <esc>

" Set clipboard
set clipboard=unnamed

" Spaces & Tabs
set tabstop=4
set softtabstop=4
set expandtab
" Width for indentation
set shiftwidth=4

" UI Config
set number
set showcmd
set wildmenu
set showmatch
set ruler
set textwidth=80
set statusline+=line:\ %l
set statusline+=/
set statusline+=%L
set statusline+=\ col:\ %c

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Movement
" currently no tweak for movement

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic Java setup
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_java_javac_classpath = "./src/main/java:./src/main/resources:./src/test/java:./src/test/resources:./lib/*"

" Syntastic Python setup
let g:syntastic_python_python_exec="${HOME}/.venv3/py3.5/bin/python"

" Syntastic Python version
let g:syntastic_python_python_exec = '$HOME/.venv3/python3/bin/python'
let $PYTHONPATH = '.'

" Comand-T
let g:CommandTWildIgnore=&wildignore . ",*.pyc,*.class,*/build/*"

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" g:ctrlp_user_command disable g:ctrlp_custom_ignore. So, it's masked.
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|idea)$'
" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|idea)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Color Schemes
" Airline theme
let g:airline_theme = "darcula"

" Vim colorscheme
colorscheme py-darcula

