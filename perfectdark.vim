set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "perfectdark"


hi Operator guifg=#8f9a9c cterm=bold
hi cNumber guifg=#e59337
hi cCustomFunc  guifg=#c2c299
hi cCustomClass guifg=#c2c299
hi cFormat guifg=#e59337
hi cUserLabel guifg=#c2c299
hi cType guifg=#78a6a6 cterm=bold
hi cConstant guifg=#c2c299
"#9b90c3
hi cError guibg=#333333

hi Comment guifg=#0987cb
hi Constant guifg=#e5bd46
hi Cursor guifg=white
hi CursorColumn guibg=gray90
hi CursorIM gui=None
hi CursorLine guibg=gray90
hi DiffAdd guibg=lightblue
hi DiffChange guibg=plum1
hi DiffDelete gui=bold guifg=blue guibg=lightcyan
hi DiffText gui=bold guibg=#333333 
hi Directory guifg=#cf85be
hi Error guifg=white 
hi ErrorMsg guifg=white
hi FoldColumn guifg=darkblue guibg=grey
hi Folded guifg=darkblue guibg=lightgrey
hi Function guifg=#c2c299
hi Identifier guifg=darkcyan
hi Ignore guifg=white
hi IncSearch gui=reverse
hi LineNr guifg=#a9b5ad
hi MatchParen gui=None
hi ModeMsg gui=bold
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=bold guifg=#ff6f30
hi Normal guifg=#e0e0d0
hi Pmenu guibg=plum1
hi PmenuSbar guibg=grey
hi PmenuSel guibg=grey
hi PmenuThumb gui=reverse
hi PreProc gui=bold guifg=#a9b5ad
hi Question gui=bold guifg=seagreen
hi Search guibg=yellow
hi SignColumn guifg=darkblue guibg=grey
hi Special guifg=#ff6f30
hi SpecialKey guifg=#52a0cb
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=#a9b5ad
hi StatusLine gui=bold,reverse
hi StatusLineNC gui=reverse
hi TabLine gui=underline guibg=lightgrey
hi TabLineFill gui=reverse
hi TabLineSel gui=bold
hi Title gui=bold guifg=magenta
hi Todo guifg=#eb9195
hi Type cterm=bold guifg=#78a6a6
hi Underlined gui=underline guifg=slateblue
hi VertSplit gui=reverse
hi Visual guifg=#aaa9b5
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=white guibg=#333333
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link String Constant
hi link Structure Type
hi link Tag Special
hi link Typedef Type
