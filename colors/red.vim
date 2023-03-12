"  ____          _       _
" |  _ \ ___  __| |_   _(_)_ __ ___
" | |_) / _ \/ _` \ \ / / | '_ ` _ \
" |  _ <  __/ (_| |\ V /| | | | | | |
" |_| \_\___|\__,_(_)_/ |_|_| |_| |_|
"
" Red.vim by Arthur Lui
" Note: A black terminal background is most compatible.
"
" Get help on each option in vim by (e.g. help on SpellBad):
" :h hl-SpellBad
"
" Based on blaque magick by xero harrison (https://github.com/xero/blaquemagick.vim)
" Color cheat sheet: https://jonasjacek.github.io/colors/

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="red"


" execute hilight
function! ExecHi(...) " att, ctermfg, ctermbg, term, cterm
  let numArgs = a:0
  let att = a:1
  let fg = "NONE"
  let bg = "16"
  let mterm = "NONE"
  let mcterm = "NONE"

  if numArgs >=3
    let fg = a:2
  endif

  if numArgs >= 3
    let bg = a:3
  endif

  if numArgs >= 4
    let mterm = a:4
  endif

  if numArgs >= 5
    let mcterm = a:5
  endif

  execute 'hi ' . att 'ctermfg=' . fg 'ctermbg=' . bg 'term=' . mterm 'cterm=' . mcterm
endfunction


" Color key
let DeepPink4     = 125
let HotPink1      = 168
let HotPink3      = 132
let LightGrey     = 252
let Grey          = 245
let DarkGrey      = 103 " Light Slate Grey
let DarkDarkGrey  = 236
let DarkOrange3   = 166
let Red1          = 196 "bright
let Red3          = 160 "brown
let DarkRed       = 88 "52
let LineNr        = 8
let Green         = 2 "46
let Black         = 16
let White         = 194
let LightBlue     = 75
let NONE          = "NONE"
let bold          = "bold"


call ExecHi("ColorColumn",NONE,DarkGrey)
call ExecHi("Comment",HotPink1,Black)
call ExecHi("Conditional",DarkGrey,Black)
call ExecHi("Constant",Red1,Black)
call ExecHi("Cursor",DarkGrey,Black)
call ExecHi("CursorLine",NONE,Black)
call ExecHi("DiffAdd",DarkGrey,Black)
call ExecHi("DiffChange",NONE,DeepPink4)
call ExecHi("DiffDelete",LightGrey,Green)
call ExecHi("DiffText",LightGrey,Grey)
call ExecHi("Directory",Grey,Black)
call ExecHi("Error",White,Red1,NONE,bold)
call ExecHi("ErrorMsg",Green,Black)
call ExecHi("FoldColumn",DarkGrey,Black)
call ExecHi("Folded",DarkGrey,Black)
"call ExecHi("Function",Red3,NONE)
call ExecHi("Function",DarkOrange3,Black)
call ExecHi("Identifier",Red3,Black)
call ExecHi("IncSearch",DarkRed,DarkOrange3,NONE,bold)
call ExecHi("NonText",DarkGrey,Black)
call ExecHi("Normal",LightGrey,Black)
call ExecHi("Number",Red1,Black)
call ExecHi("Operator",DarkGrey,Black)
call ExecHi("PreProc",DarkOrange3,Black,NONE,bold)
call ExecHi("Repeat",DarkGrey,Black)
call ExecHi("Search",DarkRed,LightGrey,NONE,bold)
call ExecHi("Special",HotPink3,Black,NONE,bold)
call ExecHi("SpecialKey",DarkGrey,Black)
call ExecHi("Statement",DarkGrey,Black,NONE,bold)
call ExecHi("StatusLine",DarkGrey,Black)
call ExecHi("String",Red3,Black)
call ExecHi("TabLineSel",LightGrey,Black)
call ExecHi("Title",DarkOrange3,Black)
call ExecHi("Todo",Black,Green)
call ExecHi("Type",White,Black,NONE,bold)
call ExecHi("VertSplit",DarkGrey,Black)
call ExecHi("Visual",Black,LightGrey)
call ExecHi("WarningMsg",DarkGrey,Black)
call ExecHi("LineNr",LineNr,Black,NONE,NONE)
call ExecHi("CursorLineNr",Black,DarkDarkGrey)

call ExecHi("Pmenu",LightGrey,DarkDarkGrey)
call ExecHi("PmenuSel",Black,Green)
call ExecHi("PmenuSbar",Black,Green)
call ExecHi("PmenuThumb",Black,Green)

"call ExecHi("SpellBad",DarkRed,Green,NONE,bold)
call ExecHi("SpellBad",White,Red3,NONE,bold)
call ExecHi("SpellCap",DarkRed,LightBlue,NONE,bold)

hi Underlined term=underline cterm=underline ctermfg=NONE ctermbg=16

hi! link diffAdded       DiffAdd
hi! link diffRemoved     DiffDelete
hi! link diffChanged     DiffChange
hi! link StatusLineNC    StatusLine
" hi! link Title           Normal
hi! link MoreMsg         Normal
hi! link Question        DiffChange
hi! link TabLine         StatusLineNC
hi! link TabLineFill     StatusLineNC
hi! link VimHiGroup      VimGroup

" For vim-gitgutter, don't use background colors.
highlight SignColumn guibg=NONE ctermbg=16

" For Lsp diagnostic colors.
" hi! link LspReferenceText DraculaSelection
" hi! link LspReferenceRead DraculaSelection
" hi! link LspReferenceWrite DraculaSelection
hi! link LspDiagnosticsDefaultInformation Directory
hi! link LspDiagnosticsDefaultHint Function
hi! link LspDiagnosticsDefaultError Error
hi! link LspDiagnosticsDefaultWarning WarningMsg
" hi! link LspDiagnosticsUnderlineError DraculaErrorLine
" hi! link LspDiagnosticsUnderlineHint DraculaInfoLine
" hi! link LspDiagnosticsUnderlineInformation DraculaInfoLine
" hi! link LspDiagnosticsUnderlineWarning DraculaWarnLine

" Vim command prompt.
hi! MsgArea guibg=NONE ctermfg=176
