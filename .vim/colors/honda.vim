" Vim color scheme
"
" Name:         honda.vim
" Maintainer:   Alex Honda <alexanderhonda@gmail.com>
" Last Change:  29 Oct 2012
" License:      Plox Don't Sue Me
" Version:      0.1
"
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "honda"

"highlight   Normal                  guifg=#ABABAB guibg=#000000  gui=NONE
highlight   Normal                  guifg=#909090 guibg=#000000  gui=NONE ctermfg=249

highlight   Cursor                  guifg=#000000 guibg=#777777
highlight   CursorLine              guifg=#121212 guibg=#121212
"highlight   MatchParen              guifg=#ffa0a0 guibg=#005f5f
highlight   MatchParen              guifg=#ff6600 guibg=#000000 gui=NONE ctermfg=202 ctermbg=0
highlight   Pmenu                   guifg=#4682b4 guibg=#404040 ctermfg=39  ctermbg=236
highlight   PmenuSel                guifg=#ff6600 guibg=#404040 ctermfg=202 ctermbg=236
highlight   Search                  guifg=#ff6600 guibg=#000000 ctermfg=202 ctermbg=0
highlight   Folded                  guifg=#404040 guibg=#000000 

highlight   StatusLine              guifg=#4682b4 guibg=#373737 gui=NONE ctermfg=39  ctermbg=238 cterm=NONE
highlight   StatusLineNC            guifg=#707070 guibg=#373737 gui=NONE ctermfg=244 ctermbg=238 cterm=NONE
highlight   VertSplit               guifg=#373737 guibg=#373737 gui=NONE ctermfg=238 ctermbg=238 cterm=NONE

highlight   Folded                  guifg=#373737 guibg=#373737 gui=NONE ctermbg=0 ctermfg=238
highlight   FoldColumn              guifg=#373737 guibg=#373737 gui=NONE ctermbg=0 ctermfg=238

highlight   Comment                 guifg=#4682b4 ctermfg=39

highlight   Constant                guifg=#a82419 ctermfg=160
hi link     String                  Constant
hi link     Character               Constant
hi link     Number                  Constant
hi link     Boolean                 Constant
hi link     Float                   Constant

highlight   Identifier              guifg=#00cdcd ctermfg=249 cterm=NONE
hi link     Function                Identifier

highlight   Statement               guifg=#acac00 gui=NONE ctermfg=184
hi link     Conditional             Statement
hi link     Repeat                  Statement
hi link     Label                   Statement
hi link     Operator                Statement
hi link     Keyword                 Statement
hi link     Exception               Statement

"highlight   PreProc                 guifg=#9933CC
highlight   PreProc                 guifg=#6633bb ctermfg=99
hi link     Include                 PreProc
hi link     Define                  PreProc
hi link     Macro                   PreProc
hi link     PreCondit               PreProc

"highlight   Type                    guifg=#4e9a06 gui=NONE ctermfg=2
highlight   Type                    guifg=#4e9a06 gui=NONE ctermfg=70
hi link     StorageClass            Type
hi link     Structure               Type
hi link     Typedef                 Type

highlight   Special                 guifg=#6633bb ctermfg=99
hi link     SpecialChar             Special
hi link     Tag                     Special
hi link     Delimiter               Special
hi link     SpecialComment          Special
hi link     Debug                   Special

highlight   Error                   ctermfg=249 ctermbg=52
"Underlined
"Ignore
"Todo

" diff
"highlight   diffAdded               ctermfg=74
highlight   diffAdded               ctermfg=72
"highlight   diffRemoved             ctermfg=168
highlight   diffRemoved             ctermfg=132
highlight   diffChanged             ctermfg=249
highlight   diffLine                ctermfg=99
highlight   diffFile                ctermfg=202

" vimdiff
highlight   DiffAdd                 ctermbg=239
highlight   DiffDelete              ctermbg=236
highlight   DiffChange              ctermbg=236
highlight   DiffText                ctermbg=238 cterm=None


" Let's highlight Tabs because I hate them and want to know where they are at
" all times. Keep your friends close and your tabs closer.
highlight   StyleFauxPas            guibg=#1f1f1f ctermbg=233 
hi link     Tab                     StyleFauxPas
hi link     TrailingSpace           StyleFauxPas
hi link     OverLength              StyleFauxPas
"hi link     ReallyOverLength        Error
"highlight   ReallyOverLength        ctermbg=52
highlight   ReallyOverLength        ctermbg=235
