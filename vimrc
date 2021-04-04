call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
Plug 'lepture/vim-jinja'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'mattn/emmet-vim'
Plug 'lepture/vim-jinja'
call plug#end()


"""
" Basic Config
"""
set nocompatible
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste for x11 only?
set clipboard=unnamedplus

" turn off menu, toolbar and scrollbar
" set guioptions-=m   "menu bar
" set guioptions-=T   "toolbar
" set guioptions-=r   "right hand scroll bar
:autocmd InsertEnter,InsertLeave * set cul!

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

" let mapleader = ' '
let mapleader = "\<Space>"
"let localleader = '\\'

" Set lines to the cursor - when moving vertically
set so=10

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
"set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme gruvbox

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


" line break in normal mode opposite of J
nnoremap K i<enter><esc>

if has('mouse')
    set mouse=a
endif



""""""""""""""""""""""""""""""""""" Mappings """"""""""""""""""""""""""""""""""
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>n :tabprevious<CR>
nnoremap <leader>m :tabnext<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=10000

"""
" fzf
"""
nnoremap <leader>e :Files!<CR>
nmap <leader>/ :BLines!<CR>
nmap <leader>? :Rg!<CR>
nmap <leader>: :Commands!<CR>
nmap <leader>b :Buffers<CR>

"""
" CtrlSF
"""
nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nmap <leader>a :CtrlSF -R ""<Left>
nmap <leader>A <Plug>CtrlSFCwordPath -W<CR>
nmap <leader>c :CtrlSFFocus<CR>
nmap <leader>C :CtrlSFToggle<CR>

"""
" You Complete Me
"""
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>

"""
" ALE
"""
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '>'
let g:ale_sign_warning = '.'
let g:ale_linters = { 'python': ['flake8'] , }


"""
" Syntastic
"""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:Syntastic_python_checkers = ['pylint', 'flake8']
