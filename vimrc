""""""""""""""""""""""""""""""""" Pathogen """"""""""""""""""""""""""""""""""""
call pathogen#infect()
call pathogen#helptags()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" calendar
let g:calendar_navi='top'
""""""""""""""""""""""""""""""" vimOrganizer """"""""""""""""""""""""""""""""""
let g:ft_ignore_pat = '\.org'
filetype plugin indent on
" and then put these lines in vimrc somewhere after the line above
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()
" let g:org_capture_file = '~/org_files/mycaptures.org'
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""" vim-wiki """""""""""""""""""""""""""""""""""
set nocompatible
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/vimwiki/',
                      \ 'template_path': '~/Dropbox/wiki/templates/',
                      \ 'template_default': 'def_template',
                      \ 'template_ext': '.html',
                      \ 'auto_export': 1}]

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste for x11 only?
set clipboard=unnamedplus

" turn off menu, toolbar and scrollbar
" set guioptions-=m   "menu bar
" set guioptions-=T   "toolbar
" set guioptions-=r   "right hand scroll bar

" backspace in normal node too
set bs=2

:set nospell "spell checking

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Show white space
set list
set listchars=trail:~,tab:>-
" Set the search scan to wrap lines
set wrapscan

" Visual Bell - turns off beeping
set vb

let mapleader = ","
let localleader = "\\"

" Set lines to the cursor - when moving vertically
set so=10

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Always show the current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme wombat256

" bash like tab completion
set wildmode=longest,list,full
set wildmenu

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" show line numbers and length
set number
set tw=0

" better esc
inoremap jk <esc>

nnoremap ; :

nnoremap <leader>md :!chromium-browser % <return>

" line break in normal mode
nnoremap K i<enter><esc>

""""""""""""""""""""""""""""""""""" Vim-tex """""""""""""""""""""""""""""""""""
" This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" Important: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" Important: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" Optional: This enables automatic indentation as you type.
filetype indent on

" Optional: Starting with vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""" Matlab """""""""""""""""""""""""""""""""""
" Fixes matchit to work with matlab
source $VIMRUNTIME/macros/matchit.vim
" Integrate matlab mlint functionality
 autocmd BufEnter *.m compiler mlint
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" Mappings """"""""""""""""""""""""""""""""""
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>n :tabprevious<CR>
map <leader>m :tabnext<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
