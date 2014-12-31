"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on
filetype indent on

" Sets how many lines of history VIM has to remember
set history=700
set nocompatible

" Set to auto read when a file is changed from the outside
set autoread

" map leader
nnoremap <Space> <nop>
let mapleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
" allow switching buffers, which have unsaved changes
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

set whichwrap+=<,>,h,l,[,]

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic
set showcmd                 " show partially typed commands
set showmode                " show the current mode

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set visualbell "No sounds
set t_vb=

set gcr=a:blinkon0 "Disable cursor blink

" timeout for shortcuts
set tm=500

" Lower the delay of escaping out of other modes
" set timeout timeoutlen=1000 ttimeoutlen=1
set timeout timeoutlen=200 ttimeoutlen=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme molokai

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
if (&term =~ "-256color")
    set t_Co=256
endif

" 256bit terminal
set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
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

" copy the previous indentation on autoindenting
set copyindent
set number

if has("gui_running")
	set lines=45
	set columns=84
endif

set pastetoggle=<F2>

set linebreak               " nice word line breaks for wrap
set tw=500
set nowrap                  " dont wrap lines

" Open all folds initially
set foldmethod=indent
set foldlevelstart=99
set nofoldenable "dont fold by default

" Auto complete setting
set completeopt=longest,menuone

" Turn on the wild menu
set wildmenu

set wildmode=list:longest
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


" ================ Scrolling ========================
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=8
set sidescrolloff=10
set sidescroll=1

" How many lines to scroll at a time, make scrolling appears faster
set scrolljump=3

"Auto indent
set autoindent

"Smart indent
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" viminfo
" Tell vim to remember certain things when we exit
"  '30  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
set viminfo='30,\"100,:20,%

" list listchars 
set list 
" Display unprintable chars
set listchars=tab:▸\ ,eol:¬
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set listchars=tab:»· 
set listchars+=trail:· 
set listchars+=extends:#
set listchars+=nbsp:.
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪

" Solid line for vsplit separator
set fcs=vert:│

" Always show the status line
set laststatus=2

" Remap VIM 0 to first non-blank character
map 0 ^

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" comments 
set com=b:#,:%,n:> 

" comment character will not be automatically inserted in the next line under any situation.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" open ag.vim
nnoremap <leader>a :Ag

set modelines=1
set nomodeline             " disable mode lines (security measure)

"easy brackets
imap <C-c> <CR><Esc>O

" turns off Vim crazy default regex 
nnoremap / /\v
vnoremap / /\v

" General settings

set mouse=a              " enable mouse
set clipboard=unnamed    " yank to X clipboard
set title                " change the terminal's title

" Writes to the unnamed register also writes to the * and + registers. This
" makes it easy to interact with the system clipboard
if has ('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" Set augroup
augroup MyAutoCmd
    autocmd!
augroup END

if has("autocmd")
    autocmd BufRead *.txt set tw=80                                         " limit width to n cols for txt files
    autocmd BufRead ~/.mutt/temp/mutt-* set tw=80 ft=mail nocindent spell   " width, mail syntax hilight, spellcheck
    autocmd FileType tex set tw=80                                          " wrap at 80 chars for LaTeX files
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 omnifunc=pythoncomplete#Complete makeprg=python\ %
    autocmd FileType c,cpp,h set shiftwidth=8 softtabstop=8 noexpandtab tabstop=8 omnifunc=ccomplete#Complete makeprg=make
    autocmd FileType ruby set shiftwidth=2 softtabstop=2 tabstop=2 omnifunc=rubyomplete#Complete makeprg=ruby\ %
    autocmd FileType sh set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=./%
    autocmd FileType perl set shiftwidth=4 softtabstop=4 tabstop=4 omnifunc=perlomplete#Complete makeprg=perl\ %
    autocmd FileType java set shiftwidth=4 softtabstop=4 tabstop=4 omnifunc=javaomplete#Complete makeprg=javac\ %
    autocmd FileType lua set shiftwidth=4 softtabstop=4 tabstop=4 momnifunc=luaomplete#Complete akeprg=lua\ %
endif

" C-a to select all
nnoremap <C-a> ggVG
inoremap <C-a> ggVG

" NERD Tree Plugin Settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

"launch NERDTree
"map <silent> <F7> :NERDTreeToggle<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

"===============================================================================
" NERDTree
"===============================================================================

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

" Shift-Tab: NERDTree
nnoremap <silent> <S-Tab> :NERDTreeToggle<CR>

" Close vim if the only window open is nerdtree
autocmd MyAutoCmd BufEnter * 
      \ if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Clears the search register
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Pull word under cursor into LHS of a substitute (for quick search and
" replace)
nnoremap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#
" Fast saving nmap <leader>w :w!<cr> 
"}}}


" global search no by default :%s/foo/bar/
set gdefault
nnoremap <tab> %
vnoremap <tab> %

"set colorcolumn=85

" Column width indicator
set colorcolumn=+1

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :


try
  source ~/.vimrc.local
catch
endtry

try
  lang en_us
catch
endtry

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

" cursos is kept in the same column "set nosol                   
set nostartofline

" ggggggggggggggggggggggggggggggggggggggggggggggggggggg

" Making Vim Extra Useful {{{

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"}}}

" My Mappings {{{

" use these to escape in insert more
imap jk <Esc>
"imap kj <Esc>
"imap ;; <Esc>
"imap ii <Esc>
" Search mappings: search will center on the line 
map N Nzz
map n nzz
" front and back of line
"map H ^
"map L $
" timesavers
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
" Yank smart, to be consistent with C and D
nnoremap Y y$

let g:ackprg='ag --nogroup --nocolor --column'
"help keep ack-grep search clean
set shellpipe=>

" timestamp
nmap <F4> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F4> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
" template 
nmap <F5> a<C-R> ---<CR>USERNAME: <CR>COMMENTS: <CR><Esc>
imap <F5> <C-R> ---<CR>USERNAME: <CR>COMMENTS: <CR>
" ***************************************
"set cm=blowfish
"set nobackup
"set noswapfile
"set nowritebackup
"set viminfo=
"set backup
"set ic hlsearch
":.!pwgen -cn 12

" relative numbers
set rnu

" fugitive always opens 3 buffers, left identified by //2 and right identified
" by //3
nmap <leader>dgl :diffget //2 \| :diffupdate<CR>
nmap <leader>dgr :diffget //3 \| :diffupdate<CR>

"===============================================================================
" Fugitive
"===============================================================================
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gd :Gdiff<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gr :Gremove<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
" Quickly stage, commit, and push the current file. Useful for editing .vimrc
nnoremap <Leader>gg :Gwrite<cr>:Gcommit -m 'update'<cr>:Git push<cr>

"===============================================================================
" DelimitMate
"===============================================================================
autocmd MyAutoCmd FileType vim let b:delimitMate_quotes = "'"

let delimitMate_expand_cr = 1

if filereadable(glob("~/.xgs/vimrc-local")) 
    source ~/.xgs/vimrc-local
endif

nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e
nnoremap <Leader>v :vsplit
nnoremap <Leader>s :split

" stop recording
nnoremap q <nop>
" stop EX mode
nnoremap Q <nop>

hi Pmenu guifg=\#000000 guibg=\#F8F8F8 ctermfg=black ctermbg=Lightgray

" U: Redos since 'u' undos
nnoremap U :redo<cr>

" _ : Quick horizontal splits
nnoremap _ :sp<cr>

" | : Quick vertical splits
nnoremap <bar> :vsp<cr>

" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>

" <Leader>1: Toggle between paste mode
nnoremap <silent> <Leader>1 :set paste!<cr>

" <Leader>q: Quit all, very useful in vimdiff
nnoremap <Leader>q :qa<cr>

" <Leader>f: Open Quickfix
nnoremap <silent> <Leader>f :botright copen<CR>

" H: Go to beginning of line.
noremap H ^

noremap L g_

" N: Find next occurrence backward
nnoremap N Nzzzv

" Ctrl-sr: Easier (s)earch and (r)eplace
nnoremap <c-s><c-r> :%s/<c-r><c-w>//gc<left><left><left>

" Ctrl-sw: Quickly surround word
nmap <c-s><c-w> ysiw

" Ctrl-g: Prints current file name (TODO Not very useful)
nnoremap <c-g> 1<c-g>

" Ctrl-h: Move word back. Consistent with zsh
noremap <c-h> b
inoremap <c-h> <c-o>b

" Ctrl-j: Scroll + move down through the file
" noremap <c-j> 3<c-e>3j
noremap <c-j> 3<c-e>

" Ctrl-k: Scroll + move up through the file
" noremap <c-k> 3<c-y>3k
noremap <c-k> 3<c-y>

" Ctrl-l: Move word forward. Consistent with zsh
noremap <c-l> w
inoremap <c-l> <c-o>w

" Ctrl-x: Cycle through the splits. I don't ever use enough splits to justify
" wasting 4 very easy to hit keys for them.
nnoremap <c-x> <c-w>w

" Ctrl-b: Go (b)ack. Go to previously buffer
nnoremap <c-b> <c-^>

" Ctrl-Space: Quick scratch buffer
nmap <C-@> <Plug>(scratch-open)
nmap <C-Space> <C-@>

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

" Space-=: Resize windows
nnoremap <space>= <c-w>=

"===============================================================================
" Normal Mode Key Mappings
"===============================================================================

" p: Paste
nnoremap p gp
" \: Toggle comment
nmap \ <Leader>c<space>
" d: Delete into the blackhole register to not clobber the last yank
nnoremap d "_d
" dd: I use this often to yank a single line, retain its original behavior
nnoremap dd dd
" f: Find. Also support repeating with .
" g: Many functions
" gp to visually select pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" ;: Command mode
noremap ; :
" c: Change into the blackhole register to not clobber the last yank
nnoremap c "_c
" v: Visual mode
" b: Move word backward
" n: Next, keep search matches in the middle of the window
nnoremap n nzzzv
" Up Down Left Right resize splits
nnoremap <up> <c-w>+
nnoremap <down> <c-w>-
nnoremap <left> <c-w><
nnoremap <right> <c-w>>

" Tab: Go to matching element
nnoremap <Tab> %

"===============================================================================
" Visual Mode Key Mappings
"===============================================================================

" y: Yank and go to end of selection
xnoremap y y`]

" p: Paste in visual mode should not replace the default register with the
" deleted text
xnoremap p "_dP

" d: Delete into the blackhole register to not clobber the last yank. To 'cut',
" use 'x' instead
xnoremap d "_d

" \: Toggle comment
xmap \ <Leader>c<space>

" Enter: Highlight visual selections
xnoremap <silent> <CR> y:let @/ = @"<cr>:set hlsearch<cr>

" Backspace: Delete selected and go into insert mode
xnoremap <bs> c

" Space: QuickRun
xnoremap <space> :QuickRun<CR>

" <|>: Reselect visual block after indent
xnoremap < <gv
xnoremap > >gv

" .: repeats the last command on every line
xnoremap . :normal.<cr>

" @: repeats macro on every line
xnoremap @ :normal@

" Tab: Indent
xmap <Tab> >

" shift-tab: unindent
xmap <s-tab> <

" Enable omni completion
set omnifunc=syntaxcomplete#Complete


" vim:foldmethod=marker:foldlevel=0
