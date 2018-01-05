" Vim syntax file
" Language: GTD
" Maintainer: y.karako
" Latest Revision: 31 December 2017

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
unlet! b:current_syntax

" Regions
syn region gtdTitle
            \ start="#" end="#*\s*$"
            \ keepend oneline
syn region gtdSituation
            \ start="@" end="@*\s*$"
            \ keepend oneline
syn region gtdEnd
            \ start="\~" end="\~*\s*$"
            \ keepend oneline
syn region gtdTag
            \ start="\[" end="\]"
            \ keepend oneline
syn region gtdTrigger
            \ start="<" end=">"
            \ keepend oneline
syn region gtdBold
            \ start="'" end="'"
            \ keepend oneline
syn region gtdString
            \ start="\S\@<=\"\|\"\S\@=" end="\S\@<=\"\|\"\S\@="
            \ keepend oneline
syn region gtdComment start="--" end="\n"

" Matches
syn match gtdListMarker "\%(\t\| \{0,4\}\)-\%(\s\+\S\)\@="

" Keywords
setlocal iskeyword+=!
setlocal iskeyword+=>
setlocal iskeyword+=<
setlocal iskeyword+=<
setlocal iskeyword+=-
syn keyword gtdTodo !!
syn keyword gtdArrow >> << -> <- AND OR

" Highlighting
hi def link gtdTitle                 Title
hi def link gtdSituation             PreProc
hi def link gtdEnd                   Todo
hi def link gtdTag                   Special
hi def link gtdTrigger               htmlTag
hi def link gtdBold                  htmlBold
hi def link gtdString                String
hi def link gtdTodo                  Todo
hi def link gtdArrow                 Statement
hi def link gtdComment               Title
hi def link gtdListMarker            Statement

let b:current_syntax = "gtd"

set commentstring=--\ %s
" vim:set sw=2: