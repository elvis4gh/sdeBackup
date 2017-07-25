" ------------------------------
" Name: vimrc for windows
" ------------------------------

" vimrc_fold_template {{{
"}}}

" CTags {{{
:set tags=tags;,TAGS;,/usr/include/tags
set autochdir
"ÇĞ»»µ½Òª²é¿´µÄÔ´´úÂëµÄ¸ùÄ¿Â¼´¦ÔËĞĞ
"ctags -R
"½«»áÔÚ´ËÄ¿Â¼´¦Éú³ÉÒ»¸ötagsÎÄ¼ş¡£
"ÓÃvim´ò¿ªÒ»¸ö´úÂëÎÄ¼ş£¬½«¹â±ê·Åµ½Ä³Ò»º¯ÊıÃûÉÏ£¬°´ÏÂ"ctrl+]"£¬¹â±ê»á×Ô¶¯Ìø×ªµ½¶¨Òå´¦£¬°´ÏÂ"ctrl+T"»ØÍË¡£
"set tags=c:\Users\eknoqry\code\ecngzlx005\eknoqry_eegs20_a12_bypass\rcp\tags
"set tags=c:\Users\eknoqry\code\vobs\ne_apps\tags
"}}}

" General {{{
" Startup {{{
filetype indent plugin on

augroup vimrcEx
au!

autocmd FileType text setlocal textwidth=78

augroup END

" vim ÎÄ¼şÕÛµş·½Ê½Îª marker
augroup ft_vim
    au!

    autocmd FileType vim setlocal foldmethod=marker

    " ´ò¿ªÎÄ¼ş×ÜÊÇ¶¨Î»µ½ÉÏ´Î±à¼­µÄÎ»ÖÃ
    autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

augroup END
" }}}

set nocompatible
set noswapfile
set history=1024
set viminfo='20,<50,s10,h
set autochdir
set autoread "Set to auto read when a file is changed from the outside
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim µÄÄ¬ÈÏ¼Ä´æÆ÷ºÍÏµÍ³¼ôÌù°å¹²Ïí
set clipboard+=unnamed
" ÉèÖÃ alt ¼ü²»Ó³Éäµ½²Ëµ¥À¸
set winaltkeys=no

" Move {{{

" }}}

" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}

" GUI {{{

syntax on

" Color - colorscheme {{{
colorscheme Tomorrow-Night
"colorscheme sorcerer
" }}}

" È«½Ç / °ë½Ç {{{
if has("ambiwidth")
    set ambiwidth=double
endif
" }}}

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set number
" ´°¿Ú´óĞ¡
set lines=35 columns=140

" menu ¹¤¾ß/²Ëµ¥À¸ {{{

"²»ÏÔÊ¾¹¤¾ß/²Ëµ¥À¸
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b

" Ê¹ÓÃÄÚÖÃ tab ÑùÊ½¶ø²»ÊÇ gui
set guioptions-=e
" }}}

" set nolist
" set listchars=trail:¡¤,extends:>,precedes:<
" set guifont=Inconsolata:h12:cANSI

" statusline ×´Ì¬À¸ {{{
set statusline=%f
set statusline+=%m
"set statusline+=\ %{fugitive#head()}
set statusline+=%=
set statusline+=%{''.(&fenc!=''?&fenc:&enc).''}
set statusline+=/
set statusline +=%{&ff}            "file format
set statusline+=\ -\      " Separator
set statusline+=%l/%L
set statusline+=[%p%%]
set statusline+=\ -\      " Separator
set statusline +=%1*\ %y\ %*

set nostartofline
set showcmd     " show (partial) command in status line
set showmode	" show editor mode, such as command, insert or replace, visual as messa
set confirm		" with dialog support confirm({msg} [, {choices} [, {default} [, {type}]]])


"vim74 config:
"set statusline= " => ×Ô¶¨Òå×´Ì¬À¸Statusline "Format the statusline
"set statusline+=%f "path to the file in the buffer, relative to current directory
"set statusline+=\ %h%1*%m%r%w%0* " flag
"set statusline+=\ [%{strlen(&ft)?&ft:'none'}, " filetype
"set statusline+=%{&encoding},                 " encoding
"set statusline+=%{&fileformat}]               " file format
"set statusline+=\ %r%{CurDir()}%h
"set statusline+=\ (%l,%c)

" }}}

" }}}

" Format {{{
set foldmethod=indent
set fileformats=unix,dos "Favorite filetype
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>
let g:explHideFiles='^\.,\.com$,\.doc$,\.pdf$,\.dvi$,\.gz$,\.exe$,\.zip$ \.ps$,\.ppt$'

" }}}

" Keymap {{{
let mapleader=","

map <leader>cd :cd %:p:h<cr>


" quick edit vimrc
nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>erc  :e $MYVIMRC<cr>
nmap <leader>eprc :vsplit c:\Users\lenovo\Dropbox\software_portable\PortableApps\Vim74\_vimrc_ref_for_vim80.local<cr>

" ÒÆ¶¯·Ö¸î´°¿Ú
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" keymap @ normal_mode {{{
" Õı³£Ä£Ê½ÏÂ alt+j,k,h,l µ÷Õû·Ö¸î´°¿Ú´óĞ¡
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>

" nnoremap <silent> <M-h> gT " prev file tab
" nnoremap <silent> <M-l> gt " next file tab

" GUI - change Layout {{{
" nnoremap <?> :vertical resize -5<cr>
" nnoremap <?> :vertical resize +5<cr>
" }}}

" }}}

" keymap @ insert_mode {{{
" ²åÈëÄ£Ê½ÒÆ¶¯¹â±ê alt + ·½Ïò¼ü
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" ×ª»»µ±Ç°ĞĞÎª´óĞ´
inoremap <C-u> <esc>mzgUiw`za

" IDE like delete
inoremap <C-BS> <Esc>bdei

" }}}

" keymap @ command_mode {{{

" ÃüÁîÄ£Ê½ÏÂµÄĞĞÊ×Î²
cnoremap <C-a> <home>
cnoremap <C-e> <end>
" cnoremap <C-w>  "default: delete prev word



"}}}

" keymap @ virtual_mode {{{


"}}}

nnoremap vv ^vg_
nnoremap <F2> :setlocal number!<cr>
nnoremap <leader>w :set wrap!<cr>

imap <C-v> "+gP
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
imap <C-V> "+gP
map <S-Insert> "+gP
cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" ´ò¿ªµ±Ç°Ä¿Â¼ windows
nmap <silent> <leader>ex :!start explorer %:p:h<CR>

" ´ò¿ªµ±Ç°Ä¿Â¼CMD
nmap <silent> <leader>cmd :!start cmd /k cd %:p:h<cr>
" ´òÓ¡µ±Ç°Ê±¼ä
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

let NERDTreeBookmarksFile = $VIM . '/NERDTreeBookmarks'

" ¸´ÖÆµ±Ç°ÎÄ¼ş/Â·¾¶µ½¼ôÌù°å
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

"ÉèÖÃÇĞ»»Buffer¿ì½İ¼ü"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" }}}

" Plugin {{{
filetype off

set rtp+=$VIMRUNTIME/../../DefaultData/settings/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIMRUNTIME/../../DefaultData/settings/vimfiles/bundle/')

" ----- Vundle ----- {{{
Plugin 'VundleVim/Vundle.vim'
" }}}
" ----- NerdTree ----- {{{
Plugin 'scrooloose/nerdtree'

let NERDTreeIgnore=['.idea', '.vscode', 'node_modules', '*.pyc']
let NERDTreeBookmarksFile = $VIM . '/NERDTreeBookmarks'
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksSort = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeShowBookmarks = 1
let g:NERDTreeWinPos = 'right'
let g:NERDTreeDirArrowExpandable = 'rrr'
let g:NERDTreeDirArrowCollapsible = 'ddd'
nmap <leader>n :NERDTreeToggle <cr>
" ¾ÍÊÇ×Ô¶¯¶ÁÈ¡ÎÄ¼şÄ¿Â¼
"if exists('g:NERDTreeWinPos')
"    autocmd vimenter * NERDTree D:\repo
"endif
" }}}
" ----- Multiple-cursors ----- {{{
Plugin 'terryma/vim-multiple-cursors'
" }}}
" ----- Tabular ----- {{{
Plugin 'godlygeek/tabular'
" }}}
" ----- Markdown ----- {{{
Plugin 'plasticboy/vim-markdown'
" }}}
" ----- Ctrlp ----- {{{
Plugin 'kien/ctrlp.vim'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
set wildignore+=*\\.git\\*,*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc
" }}}
" ----- Nerdcommenter ----- {{{
Plugin 'scrooloose/nerdcommenter'
" }}}
" ----- Emmet ----- {{{
Plugin 'mattn/emmet-vim'
" }}}
" ----- SnipMate ----- {{{
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Replace your repo
Plugin 'keelii/vim-snippets'
" Allow for vimrc re-sourcing
let g:snipMate = get(g:, 'snipMate', {})
" }}}
" ----- Neocomplete ----- {{{
Plugin 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory=$VIM . '../../DefaultData/settings/vimfiles/bundle/vim-snippets/snippets'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
" }}}
" ----- vimwiki ----- {{{
Plugin 'vimwiki'
nmap <silent> <Leader>2h :call ToHtml()<CR>
nmap <silent> <Leader>2p :call ToPdf()<CR>
nnoremap <C-j> diwi==hp

" }}}

" ----- vimwiki ----- {{{
Plugin 'skywind3000/asyncrun.vim'
" }}}

call vundle#end()            " required ------- All of your Plugins must be added  above¡¡<------------
filetype plugin indent on    " required

" }}}

" Function {{{
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()
" }}}

" abbr record {{{
" }}}

" Command record {{{

"Remove the Windows ^M
":%s/\r//g<CR>

"Remove indenting on empty line
":%s/s*$//g<cr>:noh<cr>''

" }}}

" go {{{
" favorite files
nmap <leader>gi :tabnew  c:\Users\lenovo\Dropbox\wiki\index.wiki<CR>

" }}}

" WARNING£ººóÃæµÄ¹¦ÄÜÓÅÏÈ¼¶´ó£¬×îºóÅäÖÃ¿ÉÄÜ¸²¸ÇÇ°ÃæÅäÖÃ£¡£¡£¡
" WARNING£ººóÃæµÄ¹¦ÄÜÓÅÏÈ¼¶´ó£¬×îºóÅäÖÃ¿ÉÄÜ¸²¸ÇÇ°ÃæÅäÖÃ£¡£¡£¡
" WARNING£ººóÃæµÄ¹¦ÄÜÓÅÏÈ¼¶´ó£¬×îºóÅäÖÃ¿ÉÄÜ¸²¸ÇÇ°ÃæÅäÖÃ£¡£¡£¡
" file tab label ÎÄ¼ş±êÇ©¹¦ÄÜ  {{{
set guitablabel=%t\ %M " => ×Ô¶¨Òåtab label "tab labels show the filename without path(tail) (see :help statusline for options)
set laststatus=2      "Always hide the statusline

nmap <leader>tn :tabnew %<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove<cr>
nmap <M-h> :tabprevious<cr>
nmap <M-l> :tabnext<cr>
" }}}
" searching ËÑË÷¹¦ÄÜ {{{
set ignorecase  " Searching - Ignore case when searching
set incsearch   " Searching - ×Ô¶¯ÊµÊ±¶¨Î»
set magic       " Set magic on          FIXME
set hlsearch    "Highlight search thing
"change the highlight bg color
hi Search guibg=LightGreen
"hi Search guibg=LightBlue" is only for the GUI version of Vim. If you're "using Vim in-console, try:
"hi Search ctermbg=LightBlue
"}}}
" text paste ¹¦ÄÜ {{{
set pastetoggle=<F5> "²åÈëÄ£Ê½Õ³Ìù²»»á×Ô¶¯Ëõ½ø±ÜÃâ»ìÂÒ, F5¿ª¹ØÕ³ÌùÄ£Ê½
"}}}
" mouse Êó±ê¹¦ÄÜ {{{
set mouse=a "Have the mouse enabled all the time:
set mousemodel=popup " Use extend mouse mode to search word using SHIFT+left-mouse
set mousehide " Hide the mouse pointer while typing
"}}}
" split ¹¦ÄÜ  {{{
" ·Ö¸î³öÀ´µÄ´°¿ÚÎ»ÓÚµ±Ç°´°¿ÚÏÂ±ß/ÓÒ±ß
set splitbelow
set splitright
" }}}
" marco ºê ¹¦ÄÜ {{{
" ½«Â¼ÖÆµÄºê¿½±´³öÀ´
" e.g. ÁĞ³öºê¼Ä´æÆ÷µÄÄÚÈİ£º  :reg
" e.g. È¡³öºê¼Ä´æÆ÷iµÄÄÚÈİ£º "ip
"}}}
" tab indent tabËõ½ø {{{
"Set tab stop
set tabstop=4	   " Êµ¼ÊµÄ tab ¼´Îª 4 ¸ö¿Õ¸ñ, tabstop = 4 is better for c programming
set shiftwidth=4   "ÉèÖÃ×Ô¶¯Ëõ½ø 4 ¸ö¿Õ¸ñ, µ±È»ÒªÉè×Ô¶¯Ëõ½øÏÈ.
set softtabstop=4  "¼´ÉèÖÃ softtabstop Îª 4. ÊäÈë tab ºó¾ÍÌøÁË 4 ¸ñ.
set expandtab      "ÔÚÊäÈë tab ºó, vim ÓÃÇ¡µ±µÄ¿Õ¸ñÀ´Ìî³äÕâ¸ö tab.
set whichwrap=b,s,<,>,[,]
set formatoptions=tcrqmB

if has("usetab")
    set switchbuf=usetab
endif

if has("stal")
    set showtabline=2
endif
"}}}
" indent Ëõ½ø{{{
set autoindent
set smartindent
set cindent         " C-style indenting
set cino=:0g0t0(sus " values control how cindent indent code
set wrap          " set nowrap

"}}}
" Files and backup ÎÄ¼ş±¸·İÏà¹Ø (swp ÎÄ¼şºÍ ~ÎÄ¼ş) {{{
set nobackup " do not keep a backup file, use versions instead
"set noswapfile
set nowb
set noar
"}}}
" ¶àÎÄ¼şÖ§³Ö£¬multi window£¬multi buffer£¬multi tabpage VimMultipleFiles {{{
      "¶Ô¶à¸öÎÄµµÊµÊ©ÃüÁî
      ":argdo %s/foo/bar/           : ¶ÔËùÓĞ:argsÁĞ±íÖĞµÄÎÄµµÖ´ĞĞÃüÁî
      ":bufdo %s/foo/bar/
      ":windo %s/foo/bar/
      ":argdo exe '%!sort'|w!       : Ê¹ÓÃÍâ²¿ÃüÁî
" }}}

" TODO: quickfix ¹¦ÄÜ {{{
"}}}
" TODO: make command Ò»¼ü±àÒë {{{
"makeÃüÁîÖ´ĞĞµÄ³ÌĞòÎªvim±äÁ¿makeprgµÄÖµ£¬Ä¬ÈÏmakeprg=make
"Ê¹ÓÃMakefile»úÖÆ½øĞĞÏîÄ¿µÄ±àÒë¡¢¹ÜÀí¡£¿ÉÒÔÍ¨¹ıset makeprg=xxxµÄÃüÁîĞŞ¸ÄmakeprgµÄÖµ£¬´Ó¶øÊ¹makeÃüÁîÖ´ĞĞ²»Í¬µÄ±àÒë¡£ÀıÈç£º
":set makeprg=gcc\ hello.c\ -o\ hello
set makeprg=g++\ %\ -o\ elvis.out
"}}}
" get Help {{{
" :help
nnoremap <leader>evw :tabnew c:\Users\lenovo\Dropbox\wiki\Vim\Vim.wiki<CR>
"}}}
" ´°¿Ú×î´ó»¯ {{{
autocmd GUIEnter * simalt ~x
"}}}
set cursorline
