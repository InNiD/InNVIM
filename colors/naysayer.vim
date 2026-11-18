hi clear
" if exists("syntax_on")
"   syntax reset
" endif
let g:colors_name = 'naysayer'

set termguicolors
" set background=dark
set t_md=

" ---- Links (kept from original) ----
hi! link Normal         NormalFloat
hi! link NormalFloat    CursorLineNr
hi! link SignColumn     CursorLineNr
hi! link StatusLineNC   StatusLineNC
hi! link VertSplit      StatusLineNC

" ---- Core UI ----
hi Normal         guifg=#d0b892 guibg=#062626
hi SignColumn     guibg=#062626
hi Cursor         guibg=#ffffff
hi CursorLine     guibg=#0b3335 guifg=NONE gui=NONE
hi CursorLineNr   guifg=#ffffff guibg=#062626
hi LineNr         guifg=#126367 guibg=#062626
hi ColorColumn    guibg=#0b3335
hi MatchParen     guibg=#23444b
hi Visual         guibg=#23444b
hi NonText        guifg=#126367 gui=NONE
hi EndOfBuffer    guifg=#062626 guibg=#062626

" ---- Statusline ----
hi StatusLine     guibg=#0b3335 guifg=#A1EFE4 gui=NONE
hi StatusLineNC   guibg=#062626 guifg=#126367 gui=NONE
hi VertSplit      guifg=#126367 guibg=#062626
hi StatusLineTerm guifg=#A1EFE4 guibg=#0b3335 gui=NONE

" ---- Tabline ----
hi TabLine        guifg=#126367 guibg=#062626 gui=NONE
hi TabLineFill    guibg=#062626 gui=NONE
hi TabLineSel     guifg=#A1EFE4 guibg=#0b3335 gui=NONE

" ---- Command line / messages ----
hi CommandLine    guifg=#A1EFE4 guibg=#062626
hi MsgArea        guifg=#A1EFE4 guibg=#062626
hi MsgSeparator   guifg=#126367 guibg=#062626
hi ModeMsg        guifg=#A1EFE4 gui=NONE
hi MoreMsg        guifg=#8cde94 gui=NONE
hi Question       guifg=#66D9EF gui=NONE
hi WildMenu       guifg=#12251b guibg=#A1EFE4 gui=NONE
hi Search         guifg=#062626 guibg=#E6DB74
hi IncSearch      guifg=#062626 guibg=#FD971F
hi Substitute     guifg=#062626 guibg=#F92672

" ---- Completion menu ----
hi Pmenu          guifg=#A1EFE4 guibg=#062626
hi PmenuSel       guifg=#ffffff guibg=#23444b gui=NONE
hi PmenuSbar      guibg=#062626
hi PmenuThumb     guibg=#126367

hi PmenuKind      guifg=#8cde94 guibg=#062626
hi PmenuKindSel   guifg=#8cde94 guibg=#23444b
hi PmenuExtra     guifg=#126367 guibg=#062626
hi PmenuExtraSel  guifg=#A1EFE4 guibg=#23444b
hi PmenuMatch     guifg=#FD971F guibg=#062626 gui=bold
hi PmenuMatchSel  guifg=#FD971F guibg=#23444b gui=bold
hi PmenuBorder    guifg=#126367 guibg=#062626
hi PmenuScroll    guifg=#126367 guibg=#062626
hi PmenuDocBorder guifg=#126367 guibg=#062626

" ---- Vim 内置 cmdline 补全匹配 ----
hi ComplMatchIns  guifg=#FD971F

" ---- Misc UI ----
hi Directory      guibg=#062626 guifg=#d0b892 gui=NONE
hi netrwCursor    guibg=#d3b58e guifg=#12251b

" ---- Syntax ----
hi Comment        guifg=#40C040
hi String         guifg=#3ad0b5
hi Number         guifg=#87ffde
hi Boolean        guifg=#87ffde
hi Constant       guifg=#87ffde
hi Identifier     guifg=#d0b892
hi Function       guifg=#d0b892
hi Statement      guifg=#ffffff gui=NONE
hi Keyword        guifg=#ffffff gui=NONE
hi Type           guifg=#8cde94 gui=NONE
hi PreProc        guifg=#8cde94
hi Include        guifg=#8cde94
hi Operator       guifg=#d0b892
hi Special        guifg=#FD971F
hi Exception      guifg=#ff0000
hi Label          guifg=#ffffff
hi Tag            guifg=#ffffff
hi Delimiter      guifg=#8cde94
hi Ignore         guifg=#8cde94
hi Error          guifg=#ff0000
hi WarningMsg     guifg=#ffaa00
hi Todo           guifg=#ffaa00

" ---- Diagnostics ----
hi DiagnosticError guifg=#F92672 guibg=#062626
hi DiagnosticWarn  guifg=#ffaa00 guibg=#062626
hi DiagnosticInfo  guifg=#66D9EF guibg=#062626
hi DiagnosticHint  guifg=#A1EFE4 guibg=#062626
hi DiagnosticUnderlineError guisp=#F92672
hi DiagnosticUnderlineWarn  guisp=#ffaa00
hi DiagnosticUnderlineInfo  guisp=#66D9EF
hi DiagnosticUnderlineHint  guisp=#A1EFE4

" ---- Markdown ----
hi Title      guifg=#A1EFE4 gui=bold
hi markdownH1 guifg=#A1EFE4 gui=bold
hi markdownH2 guifg=#A1EFE4 gui=bold
hi markdownH3 guifg=#A1EFE4 gui=NONE
hi markdownH4 guifg=#8cde94 gui=NONE
hi markdownH5 guifg=#8cde94 gui=NONE
hi markdownH6 guifg=#8cde94 gui=NONE

" ---- Rainbow delimiters ----
hi rainbowcol1 guifg=#AE81FF
hi rainbowcol2 guifg=#66D9EF
hi rainbowcol3 guifg=#A6E22E
hi rainbowcol4 guifg=#E6DB74
hi rainbowcol5 guifg=#FD971F
hi rainbowcol6 guifg=#F92672

" ---- Neo-tree source selector ----
hi NeoTreeTabActive            guifg=#ffffff guibg=#0b3335 gui=bold
hi NeoTreeTabInactive          guifg=#126367 guibg=#062626
hi NeoTreeTabSeparatorActive   guifg=#0b3335 guibg=#0b3335
hi NeoTreeTabSeparatorInactive guifg=#062626 guibg=#062626

" ---- Mini statusline ----
hi! link MiniStatuslineFilename StatusLine
hi! link MiniStatuslineFileinfo StatusLine
hi! link MiniStatuslineDevinfo  StatusLine

" ---- Lazy ----
hi LazyNormal       guibg=#062626 guifg=#d0b892
hi LazyButton       guibg=#062626 guifg=#d0b892
hi LazyButtonActive guifg=#12251b guibg=#d3b58e

" ---- Telescope ----
if exists(':Telescope')
    hi TelescopeSelection guibg=#23444b guifg=#ffffff
endif

" ---- Copilot ----
if exists(':Copilot')
    hi CopilotSuggestion guifg=#555555 ctermfg=8
endif

" ---- Mason ----
hi MasonNormal  guibg=#062626 guifg=#d0b892
hi MasonHeading guibg=#062626 guifg=#d0b892

" ---- Trouble ----
hi TroublePreview guifg=#12251b guibg=#d3b58e

" ---- Misc ft ----
hi tomlTable guifg=#d0b892
