" be 'modern'
set nocompatible
filetype plugin indent on

" Color
set background=dark
let g:solarized_visibility = "high"
colorscheme solarized
syntax on

" Backups
set undodir=~/.vim/undo//
set undofile
set backupdir=~/.vim/backup//
set backup
set directory=~/.vim/tmp//
set noswapfile

" UI
set number              " Show absolute line numbers
set laststatus=2        " Always show the statusline
set cmdheight=2         " Number of lines for cmdline
set notitle             " Set terminal's title
set scrolloff=3         " show 3 lines of context around cursor
set showcmd             " Show (partial) command in status line
set showmode            " Show current mode down the bottom
set nowrap              " turn off line wrapping
set listchars=tab:▸\ ,eol:¬,trail:·,extends:»,precedes:«
set showbreak=↪
set fillchars=diff:⣿,vert:│

" Behavior
set wildmode=list:longest
set wildmenu            " Enhanced cmdline completion
set wildignore=.git,.hg,*.o,*.a,*.so,*.pyc,*.swp,*DS_Store*
set hidden              " Change buffers w/o saving
set history=256         " Number of things to remember in cmdline history
set clipboard+=unnamed  " Yanks goto clipboard instead
set autowriteall        " Writes on make/shell commands
set timeoutlen=500      " Time to wait for a command (e.g. after leader)
set foldlevelstart=99   " Remove folds
set formatoptions=crql
set splitbelow          " New splits goto bottom of current window
set splitright          " New splits goto right of current window
set completeopt=menuone,preview

" Text Format
set backspace=2         " Delete everything with backspace (indent,eol,start)
set tabstop=2
set shiftwidth=2
set softtabstop=2       " With expandtab set, this backspaces through spaces like they are tabs
set cindent
set cinoptions=N-s,g0,:0,(0,l1,w1,Ws
set autoindent
set smarttab
set expandtab           " Spaces, not tabs

" Searching
set ignorecase          " Case insensitive search
set smartcase           " Case sensitive with mixed case search strings
set incsearch           " Incremental search
set hlsearch            " Highlight search term
set gdefault            " Apply substitutions globally by default (/g)

" Visual
set showmatch           " Show matching brackets
set matchtime=2         " How many tenths of a second to blink
" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim
" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" Sounds
set novisualbell        " No blinking
set noerrorbells        " No noise
set t_vb=               " No beeps or flashes on error

" Mouse
set mousehide           " Hide mouse after chars typed
set mouse=a             " Mouse in all modes

set complete=.,w,b,u,U  " Better complete options to speed it up
