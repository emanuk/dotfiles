"""""""""""""""""""""""
""" VIM COMPORTEMENT """
""""""""""""""""""""""""
set autoindent
set bs=2
set wrapmargin=7
set wrapscan
set number
set showmatch
set term=builtin_ansi
" ne demande plus de charger le fichier modifié par une autre application
set autoread
"clipboard ajoute automatiquement au presse-papier système
" clipboard+=unnamed

set syntax
syntax on
set wrap
set ic
set shortmess+=I

" vi no compatbile
set nocompatible

" tab
set softtabstop=2
set expandtab
set tabstop=2
set shiftwidth=2

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
" set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

" marges et autres
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
" set colorcolumn=0

" rendre visible caracteres invisibles
set list
set listchars=tab:▸\ ,eol:¬

" Leader
let mapleader = ","

" recherche
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" navigation parenthèses
nnoremap <tab> %
vnoremap <tab> %

set shortmess=I

" theme
set t_Co=256
set term=screen-256color

" set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme badwolf
" colorscheme goodwolf
"colorscheme toothpaste
" colorscheme mustang
" colorscheme vitamins

" autosave when focus is lost
au FocusLost * :wa

" pour reconnaître .md comme extension Markdown
au BufRead,BufNewFile *.md set filetype=markdown

"titre fenêtre
set title

" pas de barre d'outils dans gvim
set guioptions-=T

" history
set history=200

"grandeur de la fenêtre
":set lines=70 columns=100

" tmp files swp backup undo
set undodir=~/.vimtmp/_undo//,/tmp//
set directory=~/.vimtmp/_swap//,/tmp//
set backupdir=~/.vimtmp/_backup//,/tmp//

"""""""""""""""
""" PLUGINS """
"""""""""""""""

"pathogen
execute pathogen#infect()


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']
" let g:syntastic_php_checkers = ['php', 'phpcs']
" let g:syntastic_php_phpcs_args = "--standard=Drupal -n --report=csv"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

" ack
" set grepprg=ack-grep\ -k

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
"
"investigate
let g:investigate_url_for_php="https://duckduckgo.com/?q=!php ^s"


" gundo
nnoremap <leader>g :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_prefer_python3 = 1


" vim-pandoc
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#modules#disabled = ["spell"]

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

" simplenote.vim
if !empty(glob("$HOME/.simplenoterc"))
  source ~/.simplenoterc
  let g:SimplenoteVertical=1
  " let g:SimplenoteStrftime="%Y-%m-%d %T"
  let g:SimplenoteStrftime="%Y-%m-%d"
  let g:SimplenoteFiletype="markdown"
  " let g:SimplenoteListSize=30
  " let g:SimplenoteSortOrder="pinned,title"
  nnoremap <leader>snl :SimplenoteList<CR>
  nnoremap <leader>snt :SimplenoteTag<CR>
  nnoremap <leader>snn :SimplenoteNew<CR>
  nnoremap <leader>snp :SimplenotePin<CR>
  nnoremap <leader>snu :SimplenoteUnpin<CR>
endif

" vim-vinegar (netwr)
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

""""""""""""""
""" CODING """
""""""""""""""

" check perl code with :make

" autocmd FileType perl set makeprg=perl\ -c\ %\ $*
" autocmd FileType perl set errorformat=%f:%l:%m
" autocmd FileType perl set autowrite

"
" check php code with :make
"
:set makeprg=php\ -l\ %
:set errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G

" php execute
nnoremap <leader>r :!php %<cr>

" commentary
autocmd FileType php setlocal commentstring=#\ %s

" autocompletion
" set omnifunc=syntaxcomplete#Complete
filetype plugin on
set completeopt=longest,menuone
" inoremap <leader>, <C-x><C-o>
" inoremap <leader>, <C-n>

" PHP autocompletion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Check js code with  nodelint
" set makeprg=NODE_DISABLE_COLORS=1\ nodelint\ %
" set errorformat=%A%f\,\ line\ %l\,\ character\ %c:%m,%Z%.%#,%-G%.%#

""""""""""""""""""""""""""""
""" KEY MAP -  SHORTCUTS """
""""""""""""""""""""""""""""
"
" Antidote spellchecking
"
nnoremap <leader>a :!Antidote9 -f %<CR>

"
" Buffer navigation
"
" buffer next
map <C-J> :bnext<CR>
" buffer prev
map <C-K> :bprev<CR>
" goto buffer
nnoremap gb :ls<CR>:b<Space>

"
" Tagbar
"
nnoremap <leader>t :TagbarToggle<CR>

"
"ContrlP voir h:CONTROLEP
"
nnoremap <leader>j :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>
let g:ctrlp_working_path_mode = 'wc'

"
" selection |ctags|
"
nmap <C-K> <C-]>

"
" Escape key map to jj - switch to normal mode
"
imap jj <Esc>

"
" NERDTree
"
" nnoremap <leader>f :NERDTreeFind<cr>
" nnoremap <leader>n :NERDTreeToggle<cr>
" let NERDTreeShowBookmarks=1
" nnoremap <leader>n :NERDTreeToggle<cr>
" http://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/
" let NERDTreeHijackNetrw=1

"
" Relative number
"
nnoremap <leader>nn :set relativenumber!<cr>

"
" Vertical split window
"
nnoremap <leader>w <C-w>v<C-w>l

"
" vimrc
"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"
" Autocompletion 
"
function! InsertTabWrapper()
    if pumvisible()
      return "\<C-N>"
    endif
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <leader>, <C-x><C-o>

" clipboard / paste
set pastetoggle=<leader>p

" Open snippets
nnoremap <leader>sni :e $HOME/.vim/bundle/snipmate.vim/snippets/_.snippets<cr>

" Current file path
nnoremap <leader>pa :echo expand('%:p')<cr>
