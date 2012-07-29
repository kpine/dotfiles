" ==============================
" Movement
" ==============================

" emacs style jump to end of line during insert
imap <C-e> <C-o>A
imap <C-a> <C-o>I

" tab is easier to jump between matching bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z

" better navigation of wrapped lines
nnoremap j gj
nnoremap k gk
" allow for previous k/j behavior
nnoremap gk k
nnoremap gj j

" force me to not use arrow keys!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ==============================
" Window/Buffer/Tab/Split Manipulation
" ==============================

" Move back and forth through previous and next buffers
" with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

" Ctrl-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>






" quicker escaping
inoremap jj <ESC>
"
" shortcut for :
nnoremap ; :

" paste mode disables formatting during a paste operation
set pastetoggle=<F2>

" no more accidental help!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""""""""""" bindings from astrails (some modified)

" Don't use Ex mode, use Q for formatting
map Q gq

" make Y consistent with C and D
nnoremap Y y$

" toggle highlight trailing whitespace
nmap <silent> <leader>l :set nolist!<CR>

" Ctrl-N to clear search match highlight
nmap <silent> <C-N> :silent noh<CR>
" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" ,n to get the next location (compilation errors, grep etc)
nmap <leader>n :cn<CR>
nmap <leader>N :cp<CR>

" ,d to diffupdate
nmap <leader>d :diffupdate<CR>
nmap <leader>dp :diffput<CR>
nmap <leader>dg :diffget<CR>

" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv

" easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" remove trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" fast expand current file's directory in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>
" and mappings to edit other file's in its current directory:
" edit in current buffer
map <leader>ew :e %%
" horizontal split
map <leader>es :sp %%
" vertical split
map <leader>ev :vsp %%
