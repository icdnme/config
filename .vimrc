syn on
set ts=2
set sw=2
set tw=0
set expandtab
set nowrap
set hidden
set hlsearch

set history=50
set ruler
set showcmd

set mouse=

set noautoindent
set nosmartindent
set nocindent
set noincsearch

if $COLORTERM == 'gnome-terminal' || $TERM == 'screen-256color' || $TERM == 'xterm-256color'
    set t_Co=256
endif

colorscheme honda

let g:is_bash = 1

set guioptions=

" Check for some bad style habits using 2 and 3 match, which should work
" in conjunction with existing syntax highlighting
"   Tabs are bad
" 2match Tab /\t/
set list
set listchars=tab:»\ ,trail:¤
"   Trailing space is bad
2match TrailingSpace /[ \t]\+$/
"   Long Lines are bad
"3match OverLength /\%<101v.\%>81v/
au BufRead * let w:m1=matchadd('OverLength', '\%<101v.\%>81v', -1)
"   Long Lines are bad
"2match ReallyOverLength /.\%>101v/
au BufRead * let w:m2=matchadd('ReallyOverLength', '.\%>101v', -1)

" set the ctags file
set tags=./.tags,.tags

" set cscope related variables if it is enabled
if has("cscope")
    " use both cscope and ctags
    set cscopetag

    " set the cscope ctag order (cscope first=0)
    set csto=0

    " set the cscope database file
    if filereadable(".cscope")
        cs add .cscope
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " set verbosity
    set cscopeverbose
endif

" Java auto complete javacomplete
if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif

" run pylint with make %
autocmd FileType python setlocal makeprg=pylint\ --output-format=parseable
