hi clear
if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'naysayer66'

" ---------------------------------------------------------------------------
" Palette — every entry is [ GUI hex, cterm-256 fallback ]
" ---------------------------------------------------------------------------
let s:yellow      = ['#E6DB74', 186]
let s:orange      = ['#FD971F', 208]
let s:red         = ['#F92672', 197]
let s:magenta     = ['#FD5FF0', 207]
let s:blue        = ['#66D9EF',  81]
let s:green       = ['#A6E22E', 148]
let s:cyan        = ['#A1EFE4', 159]
let s:violet      = ['#AE81FF', 141]

let s:background  = ['#062626', 234]
let s:gutter      = ['#062626', 234]
let s:selection   = ['#23444b',  23]
let s:text        = ['#d0b892', 180]
let s:comment     = ['#40C040',  77]
let s:punctuation = ['#8cde94', 114]
let s:keyword     = ['#ffffff', 231]
let s:variable    = ['#d0b892', 180]
let s:function_   = ['#d0b892', 180]
let s:string      = ['#3ad0b5',  79]
let s:constant    = ['#87ffde', 122]
let s:macro       = ['#8cde94', 114]
let s:number      = ['#87ffde', 122]
let s:white       = ['#ffffff', 231]
let s:error       = ['#ff0000', 196]
let s:warning     = ['#ffaa00', 214]
let s:highlight   = ['#0b3335', 235]
let s:line_fg     = ['#126367',  23]
let s:lualine_fg  = ['#12251b', 235]
let s:lualine_bg  = ['#d3b58e', 180]

" Defined in the original but not wired to any group (kept for completeness)
let s:dimmed_keyword  = ['#b0b0b0', 145]
let s:dimmed_function = ['#cccccc', 252]
let s:dimmed_variable = ['#a0b8c8', 109]
let s:dimmed_string   = ['#2fa89e',  37]
let s:dimmed_type     = ['#79c4a6', 115]

" ---------------------------------------------------------------------------
" Helpers
" ---------------------------------------------------------------------------
" s:hi('Group', fg, bg, attr [, guisp]) — pass '' to leave a slot untouched.
" The optional 5th argument sets guisp (undercurl colour); GUI only.
function! s:hi(group, fg, bg, attr, ...) abort
  let l:cmd = 'highlight ' . a:group
  if !empty(a:fg)
    let l:cmd .= ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif
  if !empty(a:bg)
    let l:cmd .= ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif
  if !empty(a:attr)
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif
  if a:0 && !empty(a:1)
    let l:cmd .= ' guisp=' . a:1[0]
  endif
  execute l:cmd
endfunction

" Forced link, overriding any `hi def link` set by syncolor.vim or syntax files.
function! s:link(group, target) abort
  execute 'highlight! link ' . a:group . ' ' . a:target
endfunction

" ---------------------------------------------------------------------------
" Core UI
" ---------------------------------------------------------------------------
call s:hi('Normal',       s:text,        s:background, 'NONE')
call s:hi('Cursor',       '',            s:white,      'NONE')
call s:hi('Visual',       '',            s:selection,  'NONE')
call s:hi('LineNr',       s:line_fg,     s:background, 'NONE')
call s:hi('CursorLineNr', s:white,       s:background, 'NONE')
call s:hi('CursorLine',   '',            s:highlight,  'NONE')
call s:hi('ColorColumn',  '',            s:highlight,  'NONE')
call s:hi('VertSplit',    s:line_fg,     '',           'NONE')
call s:hi('MatchParen',   '',            s:selection,  'NONE')

" ---------------------------------------------------------------------------
" Syntax
" ---------------------------------------------------------------------------
call s:hi('Comment',      s:comment,     '', 'NONE')
call s:hi('String',       s:string,      '', 'NONE')
call s:hi('Number',       s:number,      '', 'NONE')
call s:hi('Boolean',      s:constant,    '', 'NONE')
call s:hi('Constant',     s:constant,    '', 'NONE')
call s:hi('Identifier',   s:variable,    '', 'NONE')
call s:hi('Function',     s:function_,   '', 'NONE')
call s:hi('Statement',    s:keyword,     '', 'NONE')
call s:hi('Keyword',      s:keyword,     '', 'NONE')
call s:hi('Type',         s:punctuation, '', 'NONE')
call s:hi('PreProc',      s:macro,       '', 'NONE')
call s:hi('Special',      s:orange,      '', 'NONE')
call s:hi('WarningMsg',   s:warning,     '', 'NONE')
call s:hi('Error',        s:error,       '', 'NONE')

" --- Patches: groups the original theme left to default links ---------------
" Characters ('a'): original falls back to @string → String.
call s:link('Character', 'String')

" String escape sequences (\n, \t, ...): original @string.escape falls back to
" @string → String.  Vim routes these through SpecialChar / vimSpecial.
call s:link('SpecialChar', 'String')
call s:link('vimSpecial',  'String')

" Control-flow keywords: original relies on default Conditional/Repeat →
" Statement links.  Pin them explicitly so syntax files cannot override.
call s:hi('Conditional', s:keyword, '', 'NONE')
call s:hi('Repeat',      s:keyword, '', 'NONE')
call s:hi('Label',       s:keyword, '', 'NONE')
call s:hi('Exception',   s:keyword, '', 'NONE')
call s:link('vimConditional', 'Conditional')
call s:link('vimRepeat',      'Repeat')

" Operators and delimiters: original relies on default Operator → Statement
" and Delimiter → Special links.  Pin explicitly.
call s:hi('Operator',  s:keyword, '', 'NONE')  " white
call s:hi('Delimiter', s:orange,  '', 'NONE')  " orange (as in original)

" ---------------------------------------------------------------------------
" Diagnostics (LSP / Neovim-style names; harmless in Vim)
" ---------------------------------------------------------------------------
call s:hi('DiagnosticError', s:red,     '', 'NONE')
call s:hi('DiagnosticWarn',  s:warning, '', 'NONE')
call s:hi('DiagnosticInfo',  s:blue,    '', 'NONE')
call s:hi('DiagnosticHint',  s:cyan,    '', 'NONE')

" ---------------------------------------------------------------------------
" Rainbow delimiters
" ---------------------------------------------------------------------------
call s:hi('rainbowcol1', s:violet,  '', 'NONE')
call s:hi('rainbowcol2', s:blue,    '', 'NONE')
call s:hi('rainbowcol3', s:green,   '', 'NONE')
call s:hi('rainbowcol4', s:yellow,  '', 'NONE')
call s:hi('rainbowcol5', s:orange,  '', 'NONE')
call s:hi('rainbowcol6', s:red,     '', 'NONE')
" Original stops at 6; level 7 otherwise falls through to a default colour.
" Reuse magenta (defined in the palette but unused by the original) so that
" deep nesting stays on-theme instead of turning into an editor default.
call s:hi('rainbowcol7', s:magenta, '', 'NONE')

" ---------------------------------------------------------------------------
" Statusline
" ---------------------------------------------------------------------------
call s:hi('StatusLine',   s:lualine_fg, s:lualine_bg, 'NONE')
call s:hi('StatusLineNC', s:line_fg,    s:gutter,     'NONE')

" ---------------------------------------------------------------------------
" Tabline
" ---------------------------------------------------------------------------
call s:hi('TabLine',    s:line_fg, s:background, 'NONE')  " inactive
call s:hi('TabLineSel', s:white,   s:highlight,  'bold')  " current active
" Vim renders the tabline's empty area / "+" button with TabLineFill; the
" original theme never defined it (Neovim inherits Normal).  Set it explicitly.
call s:hi('TabLineFill', s:line_fg, s:background, 'NONE')

" ---------------------------------------------------------------------------
" Popup menu / completion
" The original naysayer.nvim never defined the Pmenu family; in pure Vim the
" completion popup therefore falls back to editor defaults that clash with the
" dark background.  The values below are derived from the theme palette.
" ---------------------------------------------------------------------------
call s:hi('Pmenu',      s:text,    s:highlight, 'NONE')
call s:hi('PmenuSel',   s:white,   s:selection, 'bold')
call s:hi('PmenuSbar',  '',        s:background,'NONE')
call s:hi('PmenuThumb', '',        s:line_fg,   'NONE')

" Vim 8.2+ / Neovim: kind tag, extra info and fuzzy-match highlighting
call s:hi('PmenuKind',      s:blue,    s:highlight, 'NONE')
call s:hi('PmenuKindSel',   s:blue,    s:selection, 'NONE')
call s:hi('PmenuExtra',     s:comment, s:highlight, 'NONE')
call s:hi('PmenuExtraSel',  s:comment, s:selection, 'NONE')
call s:hi('PmenuMatch',     s:yellow,  s:highlight, 'NONE')
call s:hi('PmenuMatchSel',  s:yellow,  s:selection, 'bold')

" ---------------------------------------------------------------------------
" High priority: default values are light-bg / reverse-video and clash badly
" with the dark background.
" ---------------------------------------------------------------------------
" Search family: default is yellow/black reverse; CurSearch exists in Vim 9+.
call s:hi('Search',    s:background, s:yellow,  'NONE')
call s:hi('IncSearch', s:background, s:orange,  'NONE')
call s:hi('CurSearch', s:background, s:orange,  'bold')

" Command-line completion list: default is white/black reverse.
call s:hi('WildMenu', s:white, s:selection, 'bold')

" Folds: default is reverse video / grey block.
call s:hi('Folded',     s:comment, s:highlight, 'NONE')
call s:hi('FoldColumn', s:line_fg, s:background,'NONE')

" Sign column: some Vim builds give it a grey background.
call s:hi('SignColumn', '', s:background, 'NONE')

" TODO / FIXME inside comments: default is yellow background.
call s:hi('Todo', s:yellow, '', 'bold')

" Error messages (command line): default is light-red background.
call s:hi('ErrorMsg', s:error, s:background, 'bold')

" Visual in non-owning selection mode (old Vim / xterm): default reverse.
call s:link('VisualNOS', 'Visual')

" Diff: default red/green/yellow light backgrounds.
call s:hi('DiffAdd',    '',       s:highlight, 'NONE')
call s:hi('DiffChange', '',       s:highlight, 'NONE')
call s:hi('DiffDelete', s:red,    s:highlight, 'NONE')
call s:hi('DiffText',   s:yellow, s:selection, 'bold')

" Quickfix window current line: default links to Search (fixed above),
" but pin it to CursorLine-style highlight so it stays subtle.
call s:hi('QuickFixLine', '', s:selection, 'NONE')

" Spell: default gives a light red/yellow background.  Drop the background
" and keep undercurl (coloured via guisp in GUI) so it never fights the theme.
call s:hi('SpellBad',   '', s:background, 'undercurl', s:red)
call s:hi('SpellCap',   '', s:background, 'undercurl', s:yellow)
call s:hi('SpellRare',  '', s:background, 'undercurl', s:cyan)
call s:hi('SpellLocal', '', s:background, 'undercurl', s:blue)

" ---------------------------------------------------------------------------
" Medium priority: default colours are off-palette but not harsh.
" ---------------------------------------------------------------------------
call s:hi('Directory',  s:blue,   '', 'NONE')
call s:hi('Title',      s:yellow, '', 'bold')
call s:hi('NonText',    s:line_fg,'', 'NONE')
call s:hi('SpecialKey', s:line_fg,'', 'NONE')
call s:hi('Conceal',    s:line_fg,'', 'NONE')
call s:hi('MoreMsg',    s:green,  '', 'NONE')
call s:hi('Question',   s:green,  '', 'NONE')
call s:hi('Tag',        s:blue,   '', 'NONE')

call s:hi('markdownH1', s:yellow,  '', 'bold')
call s:hi('markdownH2', s:blue,    '', 'bold')
call s:hi('markdownH3', s:green,   '', 'bold')
call s:hi('markdownH4', s:orange,  '', 'bold')
call s:hi('markdownH5', s:magenta, '', 'bold')
call s:hi('markdownH6', s:cyan,    '', 'bold')
call s:hi('markdownHeadingDelimiter', s:comment, '', 'bold')  " the # marks
call s:hi('markdownHeadingRule',      s:comment, '', 'NONE')

" Inline code / fenced code blocks → string colour, as in the theme.
call s:hi('markdownCode',          s:string,  '', 'NONE')
call s:hi('markdownCodeBlock',     s:string,  '', 'NONE')
call s:hi('markdownCodeDelimiter', s:comment, '', 'NONE')

" Emphasis
call s:hi('markdownBold',       s:white, '', 'bold')
call s:hi('markdownItalic',     s:text,  '', 'italic')
call s:hi('markdownBoldItalic', s:white, '', 'bold,italic')

" Links
call s:hi('markdownLinkText',          s:blue,        '', 'underline')
call s:hi('markdownUrl',               s:cyan,        '', 'underline')
call s:hi('markdownLinkDelimiter',     s:punctuation, '', 'NONE')
call s:hi('markdownLinkTextDelimiter', s:punctuation, '', 'NONE')
call s:hi('markdownIdDeclaration',     s:blue,        '', 'NONE')

" Quotes, lists, rules
call s:hi('markdownBlockquote',        s:comment, '', 'italic')
call s:hi('markdownListMarker',        s:orange,  '', 'NONE')
call s:hi('markdownOrderedListMarker', s:orange,  '', 'NONE')
call s:hi('markdownRule',              s:comment, '', 'NONE')

" Escapes and errors
call s:hi('markdownEscape', s:orange, '', 'NONE')
call s:hi('markdownError',  s:error,  s:highlight, 'NONE')

" ---------------------------------------------------------------------------
" Neovim-only UI groups (harmless in Vim: Vim ignores groups it never uses).
" Only meaningful if this file is shared with Neovim.
" ---------------------------------------------------------------------------
call s:hi('NormalFloat', s:text,    s:highlight, 'NONE')
call s:hi('FloatBorder', s:line_fg, s:highlight, 'NONE')
call s:hi('FloatTitle',  s:yellow,  s:highlight, 'bold')
call s:link('WinSeparator', 'VertSplit')   " Neovim 0.10+
call s:hi('MsgArea',     s:text,    s:background,'NONE')   " Neovim 0.9+
call s:hi('MsgSeparator', s:line_fg, s:background,'NONE')

" ---------------------------------------------------------------------------
" Neovim-only plugin groups.
" These are safe to keep in Vim (Vim ignores groups it never uses).
" Delete this whole block if you only need a pure Vim colorscheme.
" ---------------------------------------------------------------------------
call s:link('MiniStatuslineFilename', 'StatusLine')
call s:link('MiniStatuslineFileinfo', 'StatusLine')
call s:link('MiniStatuslineDevinfo',  'StatusLine')

call s:hi('NeoTreeTabActive',            s:white,      s:highlight,  'bold')
call s:hi('NeoTreeTabInactive',          s:line_fg,    s:background, 'NONE')
call s:hi('NeoTreeTabSeparatorActive',   s:highlight,  s:highlight,  'NONE')
call s:hi('NeoTreeTabSeparatorInactive', s:background, s:background, 'NONE')

" ---------------------------------------------------------------------------
" Treesitter (Neovim only — Vim has no treesitter and '@' is not a legal
" character in a Vim highlight group name, so these cannot be ported).
" For reference, the original mapped:
"   @comment/@string/@number/@boolean/@constant/@function/@function.builtin/
"   @variable/@type/@keyword/@keyword.function/@field/@property/@parameter
" to the plain syntax groups above. Vim's syntax engine already highlights
" those constructs through Comment/String/Number/Function/Type/Keyword.
" ---------------------------------------------------------------------------

delfunction s:hi
delfunction s:link
