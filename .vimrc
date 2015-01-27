" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set nolist
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3

set guifont=FiraMono:h16

set background=dark


set autoindent  "" Auto-indent new lines
set shiftwidth=2    "" Number of auto-indent spaces
set smartindent "" Enable smart-indent
set smarttab    "" Enable smart-tabs
set softtabstop=2

set textwidth=80

set t_Co=256
set clipboard=unnamed

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

filetype off  "обязательно!

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

filetype plugin indent on     "обязательно!

"репозитории на github
Bundle 'lokaltog/vim-easymotion'

"репозитории vim/scripts
Bundle 'L9'

"" Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'mattn/emmet-vim'
    let g:user_emmet_expandabbr_key='<Tab>'
    imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'
colorscheme base16-default
Bundle "scrooloose/syntastic"
Bundle "scrooloose/nerdtree"
    map <C-n> :NERDTreeToggle<CR>
    nmap ,n :NERDTreeFind<CR>
Bundle "kien/ctrlp.vim"
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    " Setup some default ignores
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
         \ 'file': '\v\.(so|class|png|jpg|jpeg)$',
     \}
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
	set laststatus=2                                        " vim-airline doesn't appear until I create a new split
	let g:airline_theme='lucius'                            " Colorscheme for airline
	let g:airline_left_sep = ''                             " Set custom left separator
	let g:airline_right_sep = ''                            " Set custom right separator
	let g:airline#extensions#tabline#enabled = 1            " Enable airline for tab-bar
	"" let g:airline#extensions#tabline#fnamemod = ':t'        " Display only filename in tab
	let g:airline_section_y = ''
Bundle 'editorconfig/editorconfig-vim'
Bundle 'bling/vim-bufferline'
Bundle 'jeetsukumaran/vim-buffergator'
    " Use the right side of the screen
    let g:buffergator_viewport_split_policy = 'R'

    " I want my own keymappings...
    let g:buffergator_suppress_keymaps = 1
    "
    " " Looper buffers
    let g:buffergator_mru_cycle_loop = 1
    "
    " " Go to the previous buffer open
    nmap <leader>jj :BuffergatorMruCyclePrev<cr>
    "
    " " Go to the next buffer open
    nmap <leader>kk :BuffergatorMruCycleNext<cr>

    " " View the entire list of buffers open
    nmap <leader>bl :BuffergatorOpen<cr>

"" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
"" Encoding
"" set encoding=utf-8
"" set fileencoding=utf-8
"" set fileencodings=utf-8

"" Tabs. May be overriten by autocmd rules
"" set tabstop=4
"" set softtabstop=0
"" set shiftwidth=4
"" set expandtab


