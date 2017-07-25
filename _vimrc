" ------------------------------
" Name: vimrc for windows
" ------------------------------

" vimrc_fold_template {{{
"}}}

" CTags {{{
:set tags=tags;,TAGS;,/usr/include/tags
set autochdir
"�л���Ҫ�鿴��Դ����ĸ�Ŀ¼������
"ctags -R
"�����ڴ�Ŀ¼������һ��tags�ļ���
"��vim��һ�������ļ��������ŵ�ĳһ�������ϣ�����"ctrl+]"�������Զ���ת�����崦������"ctrl+T"���ˡ�
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

" vim �ļ��۵���ʽΪ marker
augroup ft_vim
    au!

    autocmd FileType vim setlocal foldmethod=marker

    " ���ļ����Ƕ�λ���ϴα༭��λ��
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
" Vim ��Ĭ�ϼĴ�����ϵͳ�����干��
set clipboard+=unnamed
" ���� alt ����ӳ�䵽�˵���
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

" ȫ�� / ��� {{{
if has("ambiwidth")
    set ambiwidth=double
endif
" }}}

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set number
" ���ڴ�С
set lines=35 columns=140

" menu ����/�˵��� {{{

"����ʾ����/�˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b

" ʹ������ tab ��ʽ������ gui
set guioptions-=e
" }}}

" set nolist
" set listchars=trail:��,extends:>,precedes:<
" set guifont=Inconsolata:h12:cANSI

" statusline ״̬�� {{{
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
"set statusline= " => �Զ���״̬��Statusline "Format the statusline
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

" �ƶ��ָ��
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" keymap @ normal_mode {{{
" ����ģʽ�� alt+j,k,h,l �����ָ�ڴ�С
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
" ����ģʽ�ƶ���� alt + �����
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" ת����ǰ��Ϊ��д
inoremap <C-u> <esc>mzgUiw`za

" IDE like delete
inoremap <C-BS> <Esc>bdei

" }}}

" keymap @ command_mode {{{

" ����ģʽ�µ�����β
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

" �򿪵�ǰĿ¼ windows
nmap <silent> <leader>ex :!start explorer %:p:h<CR>

" �򿪵�ǰĿ¼CMD
nmap <silent> <leader>cmd :!start cmd /k cd %:p:h<cr>
" ��ӡ��ǰʱ��
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

let NERDTreeBookmarksFile = $VIM . '/NERDTreeBookmarks'

" ���Ƶ�ǰ�ļ�/·����������
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

"�����л�Buffer��ݼ�"
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
" �����Զ���ȡ�ļ�Ŀ¼
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

call vundle#end()            " required ------- All of your Plugins must be added  above��<------------
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

" WARNING������Ĺ������ȼ���������ÿ��ܸ���ǰ�����ã�����
" WARNING������Ĺ������ȼ���������ÿ��ܸ���ǰ�����ã�����
" WARNING������Ĺ������ȼ���������ÿ��ܸ���ǰ�����ã�����
" file tab label �ļ���ǩ����  {{{
set guitablabel=%t\ %M " => �Զ���tab label "tab labels show the filename without path(tail) (see :help statusline for options)
set laststatus=2      "Always hide the statusline

nmap <leader>tn :tabnew %<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove<cr>
nmap <M-h> :tabprevious<cr>
nmap <M-l> :tabnext<cr>
" }}}
" searching �������� {{{
set ignorecase  " Searching - Ignore case when searching
set incsearch   " Searching - �Զ�ʵʱ��λ
set magic       " Set magic on          FIXME
set hlsearch    "Highlight search thing
"change the highlight bg color
hi Search guibg=LightGreen
"hi Search guibg=LightBlue" is only for the GUI version of Vim. If you're "using Vim in-console, try:
"hi Search ctermbg=LightBlue
"}}}
" text paste ���� {{{
set pastetoggle=<F5> "����ģʽճ�������Զ������������, F5����ճ��ģʽ
"}}}
" mouse ��깦�� {{{
set mouse=a "Have the mouse enabled all the time:
set mousemodel=popup " Use extend mouse mode to search word using SHIFT+left-mouse
set mousehide " Hide the mouse pointer while typing
"}}}
" split ����  {{{
" �ָ�����Ĵ���λ�ڵ�ǰ�����±�/�ұ�
set splitbelow
set splitright
" }}}
" marco �� ���� {{{
" ��¼�Ƶĺ꿽������
" e.g. �г���Ĵ��������ݣ�  :reg
" e.g. ȡ����Ĵ���i�����ݣ� "ip
"}}}
" tab indent tab���� {{{
"Set tab stop
set tabstop=4	   " ʵ�ʵ� tab ��Ϊ 4 ���ո�, tabstop = 4 is better for c programming
set shiftwidth=4   "�����Զ����� 4 ���ո�, ��ȻҪ���Զ�������.
set softtabstop=4  "������ softtabstop Ϊ 4. ���� tab ������� 4 ��.
set expandtab      "������ tab ��, vim ��ǡ���Ŀո��������� tab.
set whichwrap=b,s,<,>,[,]
set formatoptions=tcrqmB

if has("usetab")
    set switchbuf=usetab
endif

if has("stal")
    set showtabline=2
endif
"}}}
" indent ����{{{
set autoindent
set smartindent
set cindent         " C-style indenting
set cino=:0g0t0(sus " values control how cindent indent code
set wrap          " set nowrap

"}}}
" Files and backup �ļ�������� (swp �ļ��� ~�ļ�) {{{
set nobackup " do not keep a backup file, use versions instead
"set noswapfile
set nowb
set noar
"}}}
" ���ļ�֧�֣�multi window��multi buffer��multi tabpage VimMultipleFiles {{{
      "�Զ���ĵ�ʵʩ����
      ":argdo %s/foo/bar/           : ������:args�б��е��ĵ�ִ������
      ":bufdo %s/foo/bar/
      ":windo %s/foo/bar/
      ":argdo exe '%!sort'|w!       : ʹ���ⲿ����
" }}}

" TODO: quickfix ���� {{{
"}}}
" TODO: make command һ������ {{{
"make����ִ�еĳ���Ϊvim����makeprg��ֵ��Ĭ��makeprg=make
"ʹ��Makefile���ƽ�����Ŀ�ı��롢��������ͨ��set makeprg=xxx�������޸�makeprg��ֵ���Ӷ�ʹmake����ִ�в�ͬ�ı��롣���磺
":set makeprg=gcc\ hello.c\ -o\ hello
set makeprg=g++\ %\ -o\ elvis.out
"}}}
" get Help {{{
" :help
nnoremap <leader>evw :tabnew c:\Users\lenovo\Dropbox\wiki\Vim\Vim.wiki<CR>
"}}}
" ������� {{{
autocmd GUIEnter * simalt ~x
"}}}
set cursorline
