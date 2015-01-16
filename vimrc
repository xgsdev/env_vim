 "***important"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on
filetype indent on

" map leader
nnoremap <Space> <nop>
let mapleader = " "

"}}}

"***moving around, searching and patterns"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set whichwrap+=<,>,h,l,[,]
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to

" cursos is kept in the same column -set nosol
set nostartofline

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"clearing highlighted search
nmap <silent> <leader><cr> :nohlsearch<CR>

" turns off Vim crazy default regex 
" nnoremap / /\v
" vnoremap / /\v

" global search no by default :%s/foo/bar/
set gdefault

" open ag.vim
nnoremap <leader>a :Ag -i   <left><left>
nnoremap <leader>A :LAg -i   <left><left>

let g:agprg='ag --column'

"Search and replace using quickfix list in Vim
":Ggrep findme
":Qargs | argdo %s/findme/replacement/gc | update
nnoremap <Leader>9 :Qargs 

"}}}

"***displaying text"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5
set sidescrolloff=8
set sidescroll=1

" How many lines to scroll at a time, make scrolling appears faster
set scrolljump=3

"wrap long lines at a character in 'breakat'
set linebreak               " nice word line breaks for wrap
set nowrap                  " dont wrap lines

"string to put before wrapped screen lines
set showbreak=↪

" Solid line for vsplit separator
"fillchars	characters to use for the status line, folds and filler lines
set fcs=vert:│

" Height of the command bar
set cmdheight=1

" Don't redraw while executing macros (good performance config)
set lazyredraw

"set number
"relative numbers -set rnu
set relativenumber

" list listchars
set list

" Display unprintable chars
"set listchars=tab:▸\ ,eol:¬
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"set listchars=tab:»· 
"set listchars+=extends:#
"set listchars+=nbsp:.
set listchars=eol:¬
set listchars+=trail:· 
set listchars+=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣

"}}}

"***syntax, highlighting and spelling"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark

" Highlight search results
set hlsearch

set cursorline                  " highlight current line
hi cursorline guibg=\#333333     " highlight bg color of current line
hi CursorColumn guibg=\#333333   " highlight cursor

set colorcolumn=85

set nospell

"}}}

"***multiple windows"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" A buffer becomes hidden when it is abandoned
" allow switching buffers, which have unsaved changes
set hidden

"}}}

"***terminal"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set title                " change the terminal's title

"titlelen percentage of 'columns' used for the window title
set titlelen=85

"}}}

"***using the mouse"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a              " enable mouse

"}}}

"***messages and info"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set showcmd                 " show partially typed commands

set showmode                " show the current mode

"Always show current position
set ruler

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set visualbell "No sounds

"}}}

"***editing text"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set textwidth=500

" Configure backspace so it acts as it should act
"specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=eol,start,indent

" comments
"definition of what comment lines look like
set com=b:#,:%,n:>

" comment character will not be automatically inserted in the next line under any situation.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto complete setting
set completeopt=longest,menuone

" Enable omni completion
set omnifunc=syntaxcomplete#Complete

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

"}}}

"***tabs and indenting"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs 
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4           " used in smarttab. same as tabstop

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

"Auto indent
set autoindent

"Smart indent
set smartindent

" copy the previous indentation on autoindenting
"copy whitespace for indenting from previous line
set copyindent

"}}}

"***folding"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Open all folds initially
"set nofoldenable "dont fold by default
"folding type: "manual", "indent", "expr", "marker" or "syntax"
set foldenable                  " auto fold code
set foldlevelstart=99
set foldmethod=indent

"}}}

"***mapping"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" timeout for shortcuts
"timeoutlen
"set tm=500

" Lower the delay of escaping out of other modes
" set timeout timeoutlen=1000 ttimeoutlen=1
"timeout allow timing out halfway into a mapping
"ttimeout allow timing out halfway into a key code
set timeout timeoutlen=500 ttimeoutlen=1

" viminfo
" Tell vim to remember certain things when we exit
"  '30  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
set viminfo='30,\"100,:20,%


"}}}

"***reading and writing files"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nomodeline             " disable mode lines (security measure)
set modeline
"number of lines to check for modelines
set modelines=1

"list of file formats to look for when editing a file
set fileformats=unix,dos,mac

" Use Unix as the standard file type
"end-of-line format: "dos", "unix" or "mac"
set fileformat=unix

" ***************
"set cm=blowfish
"set noswapfile
"set nowritebackup
"set viminfo=
"set nobackup
"set backup
"set ic hlsearch
" ***************

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread

"}}}

"***command line editing"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=700

" Turn on the wild menu
"command-line completion shows a list of matches
set wildmenu

"specifies how command line completion works
set wildmode=list:longest,full
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app

"}}}

"***running make and jumping to errors"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"help keep ack-grep search clean
"string used to put the output of ":make" in the error file
set shellpipe=>

"}}}

"*** multi-byte characters"{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"}}}


" => General
set nopaste
set pastetoggle=<F2>

" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap ; :

" => Colors and Fonts
colorscheme molokai

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T           " remove the toolbar
    set lines=40                " 40 lines of text instead of 24,
	set columns=84
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" 256bit terminal
set t_Co=256

hi Pmenu guifg=\#000000 guibg=\#F8F8F8 ctermfg=black ctermbg=Lightgray
"highlight PmenuSel       ctermfg=4 ctermbg=7 guifg=LightBlue

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set clipboard=unnamed    " yank to X clipboard


" Pull word under cursor into LHS of a substitute (for quick search and
" replace)
nnoremap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#

" Auto semi colon 
" If there isn't one, append a semi colon to the end of the current line.
function s:appendSemiColon()
    if getline('.') !~ ';$'
        let original_cursor_position = getpos('.')
        exec("s/$/;/")
        call setpos('.', original_cursor_position)
    endif
endfunction

" For programming languages using a semi colon at the end of statement.
autocmd FileType c,cpp,css,java,javascript,perl,php nmap <silent><C-\> :call <SID>appendSemiColon()<cr>

" timesavers "{{{
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q

" Yank smart, to be consistent with C and D
nnoremap Y y$

" Fast saving nmap <leader>w :w!<cr> 
nmap <leader>w :w!<cr> 

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" use these to escape in insert more
imap jk <Esc>
imap kj <Esc>

" C-a to select all
nnoremap <C-a> ggVG
inoremap <C-a> ggVG

" stop recording
nnoremap q <nop>
" stop EX mode
nnoremap Q <nop>

" U: Redos since 'u' undos
nnoremap U :redo<cr>

" H: Go to beginning of line.
noremap H ^

noremap L g_

"}}}


" timestamp
nmap <F4> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F4> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
" template 
nmap <F5> a<C-R> ---<CR>USERNAME: <CR>COMMENTS: <CR><Esc>
imap <F5> <C-R> ---<CR>USERNAME: <CR>COMMENTS: <CR>

 " Use local vimrc if available {
if filereadable(glob("~/.xgs/vimrc-local")) 
    source ~/.xgs/vimrc-local
endif

nnoremap <Leader>v :vsplit
nnoremap <Leader>s :split

" Ctrl-sr: Easier (s)earch and (r)eplace
nnoremap <c-s><c-r> :%s/<c-r><c-w>//gc<left><left><left>

" Ctrl-sw: Quickly surround word
nmap <c-s><c-w> ysiw

" Ctrl-g: Prints current file name (TODO Not very useful)
nnoremap <c-g> 1<c-g>

" Ctrl-x: Cycle through the splits. I don't ever use enough splits to justify
" wasting 4 very easy to hit keys for them.
nnoremap <c-x> <c-w>w

" Quick scratch buffer
nnoremap <leader>8 :Scratch<CR>

" So both C-[ and C-] are equivalent to <Esc> (widen the target area)
" Note that in normal mode, C-] means follow link, so you should train 
" yourself to use C-[, this is just here in case you screw up once.
imap <C-]> <Esc>
vmap <C-]> <Esc> 

" Fix annoying surround.vim message
vmap s S

" Ctrl-e: Go to end of line
inoremap <c-e> <esc>A

" Ctrl-a: Go to begin of line
inoremap <c-a> <esc>I

" Ctrl-s: Save
inoremap <c-s> <esc>:w<CR>

" Ctrl-f: Move cursor left
inoremap <c-f> <Left>

" Ctrl-c: Inserts line below
inoremap <c-c> <c-o>o

" Ctrl-v: Paste. For some reason, <c-o> is not creating an undo point in the
" mapping
inoremap <c-v> <c-g>u<c-o>gP

" Ctrl-/: Undo
inoremap <c-_> <c-o>u

" Ctrl-c: Copy (works with system clipboard due to clipboard setting)
vnoremap <c-c> y`]

" Ctrl-r: Easier search and replace
vnoremap <c-r> "hy:%s/<c-r>h//gc<left><left><left>

" Ctrl-s: Easier substitue
vnoremap <c-s> :s/\%V//g<left><left><left>

"===============================================================================
" Normal Mode Key Mappings
"===============================================================================

" n: Next, keep search matches in the middle of the window
nnoremap n nzzzv

" Search mappings: search will center on the line 
map N Nzzv

" Up Down Left Right resize splits
nnoremap <up> <c-w>+
nnoremap <down> <c-w>-
nnoremap <left> <c-w><
nnoremap <right> <c-w>>

" Tab: Go to matching element
nnoremap <tab> %
vnoremap <tab> %

" Visual Mode Key Mappings - x = visual only
"===============================================================================

" y: Yank and go to end of selection
xnoremap y y`]

" Backspace: Delete selected and go into insert mode
xnoremap <bs> c

" <|>: Reselect visual block after indent
xnoremap < <gv
xnoremap > >gv

" Tab: Indent
xmap <Tab> >

" shift-tab: unindent
xmap <s-tab> <











" fast exit
nmap __ :qa<CR>

" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>



" Autocommands "{{{

augroup allFiles
    autocmd!
    " Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

    autocmd BufRead *.txt set tw=80                                         " limit width to n cols for txt files
    autocmd BufRead ~/.mutt/temp/mutt-* set tw=80 ft=mail nocindent spell   " width, mail syntax hilight, spellcheck
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 makeprg=python\ %
    autocmd FileType c,cpp,h set shiftwidth=8 softtabstop=8 noexpandtab tabstop=8 makeprg=make
    autocmd FileType ruby set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
    autocmd FileType sh set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=./%
    autocmd FileType perl set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
    autocmd FileType java set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
    autocmd FileType lua set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
augroup END

" neocomplete autocmd - Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"}}}

" Plugins - General "{{{

" Turn rainbow parenthesis script on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Make sure we don't syntax check when a file is open as doing so might lead
" to vulnerabilities or performance issues.
let g:syntastic_check_on_open = 0
" Always stick detected errors into the location list.
let g:syntastic_always_populate_loc_list=1
" Automatically open when errors are detected and close when there are none.
let g:syntastic_auto_loc_list=1
" Default only to 5 lines instead of 10 (better when in the terminal)
let g:syntastic_loc_list_height = 5

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap cc :TComment<CR> 
vnoremap cc :TCommentBlock<CR> 

" fugitive always opens 3 buffers, left identified by //2 and right identified
" by //3
nmap <leader>dgl :diffget //2 \| :diffupdate<CR>
nmap <leader>dgr :diffget //3 \| :diffupdate<CR>

"}}}

" NERD Tree Plugin Settings "{{{
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" let g:NERDTreeWinSize = 30
" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

" Toggle the NERD Tree on an off with F7
nmap <silent> <F7> :NERDTreeToggle<CR>

" Shift-Tab: NERDTree
nnoremap <silent> <S-Tab> :NERDTreeToggle<CR>

"}}}

" neocomplete plugin "{{{

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <expr><CR> neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" <CR>: close popup
" <s-CR>: close popup and save indent.
inoremap <expr><s-CR> pumvisible() ? neocomplete#close_popup()"\<CR>" : "\<CR>"
" inoremap <expr><CR> pumvisible() ? neocomplete#close_popup() : "\<CR>"

"}}}

" neosnippet plugin "{{{

" deactivate neosnippet
let g:neosnippet#disable_runtime_snippets = { 'c' : 1, 'cpp' : 1, }

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"}}}

" Unite plugin "{{{
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>

nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files file<cr>

nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>

nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffers buffer -quick-match<CR>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>


 let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''

" nnoremap <leader>/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <leader>/ :<C-u>Unite -buffer-name=search grep:.<cr>
" nnoremap /  :Unite line<cr>


"}}}

nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :Bdelete<cr>
nnoremap <c-h> :b#<cr>
noremap <leader>x :close<cr>



 " vim: set foldenable foldmethod=marker foldlevel=0:
