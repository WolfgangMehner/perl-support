" Vim syntax file
" Language: mm template engine : template library
" Maintainer: Wolfgang Mehner <wolfgang-mehner@web.de>
" Last Change: 30.08.2014
" Version: 1.0

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

"-------------------------------------------------------------------------------
" Syntax
"-------------------------------------------------------------------------------

" comment
syn match Comment   "^§.*$"
syn match Comment   "\%(==\)\@<=[^=]*$"

" templates, lists, ...
syn match Structure "^==\s*\%(TEMPLATE:\)\?[a-zA-Z0-9\-+.,_ ]\+==\%(.\+==\)\?"
syn match Structure "^==\s*ENDTEMPLATE\s*=="

syn match Structure "^==\s*HELP:[a-zA-Z0-9\-+.,_ ]\+==\%(.\+==\)\?"

syn match Structure "^==\s*SEP:[a-zA-Z0-9\-+.,_ ]\+=="

syn match Structure "^==\s*LIST:\s*[a-zA-Z0-9_]\+\s*==\%(.\+==\)\?"
syn match Structure "^==\s*ENDLIST\s*=="

" style sections
syn match Statement "^==\s*IF\s\+|STYLE|\s\+IS\s\+[a-zA-Z0-9_]\+\s*=="
syn match Statement "^==\s*ENDIF\s*=="

syn match Statement "^==\s*USE\s\+STYLES\s*:[a-zA-Z0-9_, ]\+=="
syn match Statement "^==\s*ENDSTYLES\s*=="

syn match Statement "^==\s*USE\s\+FILETYPES\s*:[a-zA-Z0-9_, ]\+=="
syn match Statement "^==\s*ENDFILETYPES\s*=="

" functions: command mode
syn match Function  "InterfaceVersion\ze\s*("

syn match Function  "IncludeFile\ze\s*("
syn match Function  "SetFormat\ze\s*("
syn match Function  "SetMacro\ze\s*("
syn match Function  "SetStyle\ze\s*("
syn match Function  "SetSyntax\ze\s*("
syn match Function  "SetPath\ze\s*("

syn match Function  "MenuShortcut\ze\s*("
syn match Function  "SetProperty\ze\s*("
syn match Function  "SetMap\ze\s*("
syn match Function  "SetShortcut\ze\s*("

" functions: standard template
syn match Function  "|\zsDefaultMacro\ze("
syn match Function  "|\zsPrompt\ze("
syn match Function  "|\zsPickFile\ze("
syn match Function  "|\zsPickList\ze("
syn match Function  "|\zsSurroundWith\ze("
syn match Function  "|\zsInsert\ze("
syn match Function  "|\zsInsertLine\ze("

syn match Comment   "|C(.\{-})|"
syn match Comment   "|Comment(.\{-})|"

" functions: help
syn match Function  "|\zsWord\ze("
syn match Function  "|\zsPattern\ze("
syn match Function  "|\zsDefault\ze("
syn match Function  "|\zsSubstitute\ze("
syn match Function  "|\zsLiteralSub\ze("
syn match Function  "|\zsBrowser\ze("
syn match Function  "|\zsSystem\ze("
syn match Function  "|\zsVim\ze("

" strings, macros, tags, jump targets
syn match String    "'\%([^']\|''\)*'"
syn match String    "\"\%([^"\\]\|\\.\)*\""

syn match Tag       "|?\?[a-zA-Z][a-zA-Z0-9_:]*|"
syn match Tag       "<CURSOR>\|{CURSOR}"
syn match Tag       "<SPLIT>"
syn match Tag       "<CONTENT>"

syn match Search    "<\([+-]\)\w*\1>"
syn match Search    "{\([+-]\)\w*\1}"

let b:current_syntax = "template"
