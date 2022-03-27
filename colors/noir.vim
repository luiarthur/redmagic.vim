"              _            _
"  _ __   ___ (_)_ ____   _(_)_ __ ___
" | '_ \ / _ \| | '__\ \ / / | '_ ` _ \
" | | | | (_) | | | _ \ V /| | | | | | |
" |_| |_|\___/|_|_|(_) \_/ |_|_| |_| |_|
" 
" Get help on each option in vim by (e.g. help on SpellBad):
" :h hl-SpellBad
"
" Color cheat sheet: https://jonasjacek.github.io/colors/

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="noir"

" Define special colors.
hi Normal     ctermfg=250	ctermbg=16
hi SpellRare  ctermfg=124	ctermbg=16
hi Constant	  ctermfg=252	ctermbg=16
hi SpellBad   ctermfg=250	ctermbg=88
hi Error      ctermfg=255	ctermbg=88
hi DiffText	  ctermfg=250	ctermbg=196
hi Search	    ctermfg=245	ctermbg=236
hi PmenuThumb	ctermfg=232	ctermbg=240
hi Pmenu	    ctermfg=255	ctermbg=240
hi IncSearch  ctermfg=255	ctermbg=245
hi WildMenu   ctermfg=240	ctermbg=255

" Color groups
hi Group1     ctermfg=196 ctermbg=16
hi Group2     ctermfg=240 ctermbg=16
hi Group3	    ctermfg=245	ctermbg=16
hi Group4	    ctermfg=250	ctermbg=16
hi Group5	    ctermfg=255	ctermbg=16
hi Group6	    ctermfg=255	ctermbg=124
hi Group7	    ctermfg=16  ctermbg=245
hi Group8	    ctermfg=16  ctermbg=250
hi Group9     ctermfg=16  ctermbg=255
hi Group10    ctermfg=160 ctermbg=255

" Links.
hi! link Character       Group1
hi! link Conditional     Group1
hi! link Float           Group1
hi! link Folded          Group1
hi! link Number          Group1
hi! link String       	 Group1
hi! link Tag             Group1
hi! link WarningMsg      Group1

hi! link Comment         Group2
hi! link DiffDelete      Group2
hi! link diffRemoved     Group2
hi! link LineNr          Group2
hi! link NonText         Group2
hi! link StatusLineNC    Group2

hi! link Function	       Group3
hi! link SpecialComment	 Group3

hi! link Boolean	       Group4
hi! link Debug	         Group4
hi! link Delimiter	     Group4
hi! link Exception	     Group4
hi! link FoldColumn	     Group4
hi! link Identifier	     Group4
hi! link Macro	         Group4
hi! link ModeMsg	       Group4
hi! link MoreMsg	       Group4
hi! link Question	       Group4
hi! link Title	         Group4
hi! link VertSplit	     Group4

hi! link Define	         Group5
hi! link DiffAdd	       Group5
hi! link Directory	     Group5
hi! link diffAdded	     Group5
hi! link diffCommon	     Group5
hi! link Include	       Group5
hi! link Keyword	       Group5
hi! link Label	         Group5
hi! link Operator	       Group5
hi! link PreCondit	     Group5
hi! link PreProc	       Group5
hi! link Repeat	         Group5
hi! link Special	       Group5
hi! link SpecialChar     Group5
hi! link Statement	     Group5
hi! link StatusLine	     Group5
hi! link StorageClass    Group5
hi! link Structure	     Group5
hi! link Todo	           Group5
hi! link Type	           Group5
hi! link Typedef	       Group5

hi! link ErrorMsg	       Group6
hi! link SpellCap	       Group6
hi! link SpellLocal	     Group6

hi! link Cursor	         Group7
hi! link CursorColumn  	 Group7
hi! link MatchParen	     Group7

hi! link ColorColumn     Group8
hi! link PmenuSbar	     Group8
hi! link PmenuSel	       Group8
hi! link Visual	         Group8
hi! link VisualNOS       Group8

hi! link SpecialKey      Group9
hi! link iCursor         Group9

hi! link DiffChange      Group10
hi! link diffChanged     Group10