" colors/tokyonight-night.vim
" TokyoNight Night colorscheme for Vim

" Usage:
"   set termguicolors
"   colorscheme tokyonight-night

set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'tokyonight-night'

if !exists('*tokyonight#get_colors')
  finish
endif

let s:c = tokyonight#get_colors()

function! s:hi(group, fg, bg, attr) abort
  call tokyonight#hi(a:group, a:fg, a:bg, a:attr)
endfunction

" ─── Editor UI ────────────────────────────────────────────────────────────────
call s:hi('Normal',         s:c.fg,           s:c.bg,            'NONE')
call s:hi('NormalFloat',    s:c.fg,           s:c.bg_popup,      'NONE')
call s:hi('NormalNC',       s:c.fg_dark,      s:c.bg,            'NONE')
call s:hi('ColorColumn',    '',               s:c.bg_highlight,  'NONE')
call s:hi('Conceal',        s:c.dark5,        s:c.bg,            'NONE')
call s:hi('Cursor',         s:c.bg,           s:c.fg,            'NONE')
call s:hi('CursorLine',     '',               s:c.bg_highlight,  'NONE')
call s:hi('CursorColumn',   '',               s:c.bg_highlight,  'NONE')
call s:hi('CursorLineNr',   s:c.dark5,        '',                'NONE')
call s:hi('LineNr',         s:c.fg_gutter,    '',                'NONE')
call s:hi('SignColumn',     s:c.fg_gutter,    s:c.bg,            'NONE')
call s:hi('Directory',      s:c.blue,         '',                'NONE')
call s:hi('EndOfBuffer',    s:c.bg,           '',                'NONE')
call s:hi('ErrorMsg',       s:c.red,          '',                'bold')
call s:hi('WarningMsg',     s:c.warning,      '',                'NONE')
call s:hi('MoreMsg',        s:c.blue,         '',                'NONE')
call s:hi('ModeMsg',        s:c.fg_dark,      '',                'bold')
call s:hi('Question',       s:c.blue,         '',                'NONE')
call s:hi('QuickFixLine',   '',               s:c.bg_visual,     'bold')
call s:hi('MatchParen',     s:c.orange,       '',                'bold')
call s:hi('NonText',        s:c.dark3,        '',                'NONE')
call s:hi('Folded',         s:c.blue,         s:c.fg_gutter,     'NONE')
call s:hi('FoldColumn',     s:c.comment,      s:c.bg,            'NONE')
call s:hi('IncSearch',      s:c.black,        s:c.orange,        'NONE')
call s:hi('Search',         s:c.bg,           s:c.blue,          'NONE')
call s:hi('Substitute',     s:c.black,        s:c.red,           'NONE')
call s:hi('WildMenu',       s:c.bg,           s:c.blue,          'NONE')
call s:hi('VertSplit',      s:c.border,       s:c.bg,            'NONE')
call s:hi('WinSeparator',   s:c.border,       s:c.bg,            'NONE')
call s:hi('StatusLine',     s:c.fg_sidebar,   s:c.bg_statusline, 'NONE')
call s:hi('StatusLineNC',   s:c.fg_gutter,    s:c.bg_statusline, 'NONE')
call s:hi('TabLine',        s:c.fg_gutter,    s:c.bg_dark,       'NONE')
call s:hi('TabLineFill',    '',               s:c.black,         'NONE')
call s:hi('TabLineSel',     s:c.fg,           s:c.bg,            'NONE')
call s:hi('Title',          s:c.blue,         '',                'bold')
call s:hi('Visual',         '',               s:c.bg_visual,     'NONE')
call s:hi('VisualNOS',      '',               s:c.bg_visual,     'NONE')
call s:hi('Whitespace',     s:c.fg_gutter,    '',                'NONE')
call s:hi('SpecialKey',     s:c.dark3,        '',                'NONE')

" ─── Popup / Menu ─────────────────────────────────────────────────────────────
call s:hi('Pmenu',          s:c.fg,           s:c.bg_popup,      'NONE')
call s:hi('PmenuSel',       '',               s:c.bg_search,     'bold')
call s:hi('PmenuSbar',      '',               s:c.bg_popup,      'NONE')
call s:hi('PmenuThumb',     '',               s:c.dark5,         'NONE')

" ─── Spell ────────────────────────────────────────────────────────────────────
call s:hi('SpellBad',       s:c.error,        '',                'undercurl')
call s:hi('SpellCap',       s:c.warning,      '',                'undercurl')
call s:hi('SpellLocal',     s:c.info,         '',                'undercurl')
call s:hi('SpellRare',      s:c.hint,         '',                'undercurl')

" ─── Diff ─────────────────────────────────────────────────────────────────────
call s:hi('DiffAdd',        '',               s:c.diff_add,      'NONE')
call s:hi('DiffChange',     '',               s:c.diff_change,   'NONE')
call s:hi('DiffDelete',     s:c.red,          s:c.diff_delete,   'NONE')
call s:hi('DiffText',       '',               s:c.diff_text,     'NONE')

" ─── Syntax ───────────────────────────────────────────────────────────────────
call s:hi('Comment',        s:c.comment,      '',                'italic')
call s:hi('Constant',       s:c.orange,       '',                'NONE')
call s:hi('String',         s:c.green,        '',                'NONE')
call s:hi('Character',      s:c.green,        '',                'NONE')
call s:hi('Number',         s:c.orange,       '',                'NONE')
call s:hi('Boolean',        s:c.orange,       '',                'NONE')
call s:hi('Float',          s:c.orange,       '',                'NONE')
call s:hi('Identifier',     s:c.red,          '',                'NONE')
call s:hi('Function',       s:c.blue,         '',                'NONE')
call s:hi('Statement',      s:c.magenta,      '',                'NONE')
call s:hi('Conditional',    s:c.magenta,      '',                'NONE')
call s:hi('Repeat',         s:c.magenta,      '',                'NONE')
call s:hi('Label',          s:c.magenta,      '',                'NONE')
call s:hi('Operator',       s:c.blue5,        '',                'NONE')
call s:hi('Keyword',        s:c.cyan,         '',                'italic')
call s:hi('Exception',      s:c.magenta,      '',                'NONE')
call s:hi('PreProc',        s:c.cyan,         '',                'NONE')
call s:hi('Include',        s:c.blue,         '',                'NONE')
call s:hi('Define',         s:c.magenta,      '',                'NONE')
call s:hi('Macro',          s:c.magenta,      '',                'NONE')
call s:hi('PreCondit',      s:c.cyan,         '',                'NONE')
call s:hi('Type',           s:c.blue1,        '',                'NONE')
call s:hi('StorageClass',   s:c.blue1,        '',                'NONE')
call s:hi('Structure',      s:c.blue1,        '',                'NONE')
call s:hi('Typedef',        s:c.blue1,        '',                'NONE')
call s:hi('Special',        s:c.blue1,        '',                'NONE')
call s:hi('SpecialChar',    s:c.orange,       '',                'NONE')
call s:hi('Tag',            s:c.blue,         '',                'NONE')
call s:hi('Delimiter',      s:c.blue5,        '',                'NONE')
call s:hi('SpecialComment', s:c.comment,      '',                'italic')
call s:hi('Debug',          s:c.orange,       '',                'NONE')
call s:hi('Underlined',     s:c.blue,         '',                'underline')
call s:hi('Ignore',         s:c.dark3,        '',                'NONE')
call s:hi('Error',          s:c.error,        '',                'NONE')
call s:hi('Todo',           s:c.blue,         '',                'bold')

" ─── Diagnostic ───────────────────────────────────────────────────────────────
call s:hi('DiagnosticError',          s:c.error,   '', 'NONE')
call s:hi('DiagnosticWarn',           s:c.warning, '', 'NONE')
call s:hi('DiagnosticInfo',           s:c.info,    '', 'NONE')
call s:hi('DiagnosticHint',           s:c.hint,    '', 'NONE')
call s:hi('DiagnosticUnderlineError', s:c.error,   '', 'undercurl')
call s:hi('DiagnosticUnderlineWarn',  s:c.warning, '', 'undercurl')
call s:hi('DiagnosticUnderlineInfo',  s:c.info,    '', 'undercurl')
call s:hi('DiagnosticUnderlineHint',  s:c.hint,    '', 'undercurl')

" ─── NERDTree ─────────────────────────────────────────────────────────────────
call s:hi('NERDTreeDir',        s:c.blue,    '', 'NONE')
call s:hi('NERDTreeDirSlash',   s:c.blue,    '', 'NONE')
call s:hi('NERDTreeFile',       s:c.fg,      '', 'NONE')
call s:hi('NERDTreeExecFile',   s:c.green,   '', 'NONE')
call s:hi('NERDTreeOpenable',   s:c.blue,    '', 'NONE')
call s:hi('NERDTreeClosable',   s:c.blue,    '', 'NONE')
call s:hi('NERDTreeCWD',        s:c.orange,  '', 'bold')
call s:hi('NERDTreeHelp',       s:c.comment, '', 'NONE')
call s:hi('NERDTreeUp',         s:c.dark5,   '', 'NONE')

" ─── GitGutter ────────────────────────────────────────────────────────────────
call s:hi('GitGutterAdd',    s:c.git_add,    '', 'NONE')
call s:hi('GitGutterChange', s:c.git_change, '', 'NONE')
call s:hi('GitGutterDelete', s:c.git_delete, '', 'NONE')

" ─── Terminal ─────────────────────────────────────────────────────────────────
if has('terminal')
  let g:terminal_ansi_colors = [
    \ s:c.black,          s:c.red,
    \ s:c.green,          s:c.yellow,
    \ s:c.blue,           s:c.magenta,
    \ s:c.cyan,           s:c.fg_dark,
    \ s:c.terminal_black, s:c.red,
    \ s:c.green,          s:c.yellow,
    \ s:c.blue,           s:c.magenta,
    \ s:c.cyan,           s:c.fg,
  \ ]
endif
