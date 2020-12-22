"pathogen
execute pathogen#infect()

"""""""""""""""""""""""
""" VIM COMPORTEMENT """
""""""""""""""""""""""""
set autoindent
set bs=2
set wrapmargin=7
set wrapscan
set number
" set relativenumber
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

" vi no compatible
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
set lbr
set textwidth=85
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
" désélectionne les termes trouvés dans une recherche
nnoremap <leader><space> :noh<cr>
nnoremap <Return> :nohls<Return><Return>

" navigation parenthèses
nnoremap <tab> %
vnoremap <tab> %

set shortmess=I

" theme
set t_Co=256
set term=screen-256color
highlight Pmenu ctermfg=White ctermbg=DarkBlue cterm=None guifg=Cyan guibg=DarkBlue

syntax enable
set background=dark
" set background=light
" let g:solarized_termcolors=256
" DIFF: Set high visibility for diff mode
let g:solarized_diffmode="low"
colorscheme solarized
call togglebg#map("<F5>")
" colorscheme molokai
" colorscheme badwolf
" colorscheme goodwolf
" colorscheme toothpaste
" colorscheme mustang
" colorscheme vitamins
" colors zenburn


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
let g:syntastic_php_phpcs_args = "--standard=Drupal -n --report=csv"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
nnoremap <leader>syc :SyntasticCheck<cr>
nnoremap <leader>syr :SyntasticReset<cr>

" ack
" set grepprg=ack-grep\ -k

"lightline
" let g:lightline = {
"       \ 'colorscheme': 'seoul256',
"       \ }
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" let g:lightline = {
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'gitbranch#name'
"       \ },
"       \ }

" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ }

" let g:lightline = {
"       \ 'component_function': {
"       \   'filename': 'LightLineFilename'
"       \ }
"       \ }
" function! LightLineFilename()
"   return expand('%:p')
" endfunction


""investigate
let g:investigate_url_for_php="https://duckduckgo.com/?q=!php ^s"
" shortcut: gK


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
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1

" simplenote.vim
" if !empty(glob("$HOME/.simplenoterc"))
  " source ~/.simplenoterc
  " let g:SimplenoteVertical=1
  " g:SimplenoteSingleWindow
  " let g:SimplenoteStrftime="%Y-%m-%d %T"
  " let g:SimplenoteStrftime="%Y-%m-%d"
  " let g:SimplenoteFiletype="markdown"
  " let g:SimplenoteListSize=30
  " let g:SimplenoteSortOrder="pinned,title"
  " nnoremap <leader>snl :SimplenoteList<CR>
  " nnoremap <leader>snt :SimplenoteTag<CR>
  " nnoremap <leader>snn :SimplenoteNew<CR>
  " nnoremap <leader>snp :SimplenotePin<CR>
  " nnoremap <leader>snP :SimplenoteUnpin<CR>
  " nnoremap <leader>snu :SimplenoteUpdate<CR>
" endif

" vim-vinegar (netwr)
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_liststyle=3

" Ultisnips
let g:UltiSnipsExpandTrigger="<leader>,"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit='context'
let g:UltiSnipsSnippetsDir='~/.vim/snippets_ulti'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets_ulti"]
nnoremap <leader>snp :e ~/.vim/bundle/vim-snippets/snippets/php.snippets<CR>
nnoremap <leader>es :UltiSnipsEdit<cr>

" neocomplete
let g:neocomplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" mustache-handlebars / Ember
let g:mustache_abbreviations = 1

" vim-fugitive
set diffopt+=vertical

" IndentLine
let g:indentLine_enabled = 0
nnoremap <leader>il :IndentLinesToggle<CR>

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.twig'


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
set omnifunc=syntaxcomplete#Complete
filetype plugin on
set completeopt=longest,menuone
" inoremap <leader>, <C-x><C-o>
" inoremap <leader>, <C-n>

" PHP autocompletion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Check js code with  nodelint
" set makeprg=NODE_DISABLE_COLORS=1\ nodelint\ %
" set errorformat=%A%f\,\ line\ %l\,\ character\ %c:%m,%Z%.%#,%-G%.%#

" EmberJS template .hbs 
autocmd FileType hbs set omnifunc=htmlcomplete#CompleteTags

" Drupal
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufRead,BufNewFile *.theme set filetype=php
  augroup END
endif
syntax on

""""""""""""""""""""""""""""
""" KEY MAP -  SHORTCUTS """
""""""""""""""""""""""""""""
"
" Antidote spellchecking
"
nnoremap <leader>a :!Antidote10 -f %<CR>

"
" Buffer navigation
"
" buffer next
" map <C-J> :bnext<CR>
" buffer prev
" map <C-K> :bprev<CR>
" goto buffer
nnoremap gb :ls<CR>:b<Space>

"
" Tagbar
"
nnoremap <leader>t :TagbarToggle<CR>

"
"ContrlP voir h:CONTROLP
"
nnoremap <leader>j :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_working_path_mode = ''
" let g:ctrlp_custom_ignore = 

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

" Horizontal split window
"
nnoremap <leader>ws <C-w>s<C-w>j
"
" vimrc
"
" nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ev :split $MYVIMRC<cr>
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

" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <leader>, <C-x><C-o>

" clipboard / paste
set pastetoggle=<leader>p

" Current file path
nnoremap <leader>pa :echo expand('%:p')<cr>

" cd to file path
nnoremap <leader>cd :lcd %:p:h<cr>
" map shortcuts

nnoremap <leader>lea :Ack 'leader>' ~/.vimrc<cr>

" nnoremap <leader>mm :g:mustache_abbreviations = 1<cr>

" window split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" window resize
" map <c-m> <c-w><
" map <c-n> <c-w>>
nnoremap <leader>vr :vertical resize +20<cr>

" fzf
set rtp+=~/.fzf
nnoremap <leader>f :Files<cr>

"ag the silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" dans les substitions par defaut le drapeau /g substitue tout
set nogdefault

" navigation dans les tags
nnoremap <leader>t :tag <c-r><c-w><cr>

" linebreak
nnoremap <leader>lb :set linebreak!<cr>

" force markdown syntax
nnoremap <leader>md :set syntax=markdown<cr>

" force markdown syntax
nnoremap <leader>css :set syntax=css<cr>

" change guifont for gvim on small screen
nnoremap <leader>gf :set guifont=Monospace\ Regular\ 14<cr>

" fmt
nnoremap <leader>fmt :,!fmt<cr>
xnoremap <leader>fmt :'<,'>!fmt<cr>

" Change de thème pour Molokai
nnoremap <leader>M :colo molokai<cr>

" Copie texte en édition dans le presse-papier
nnoremap <leader>cc :! cat % \| xclip<cr>

" cache les caractères invisible 
nnoremap <leader>nl :set nolist!<cr>

" ouvre les fichiers md sans rétractations des sections
" set foldlevel=99

" code folding
set foldmethod=indent
set nofoldenable

