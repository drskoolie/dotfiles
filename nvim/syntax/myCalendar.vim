if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

syntax match myCalendarDate /^\d\+-\d\+-\d\+/
syntax match myCalendarUnfinishedTask /^\s*-.*/
syntax match myCalendarFinishedTask /^\s*+.*/

highlight default link myCalendarDate Statement
highlight default link myCalendarFinishedTask Question
highlight default link myCalendarUnfinishedTask ErrorMsg

let b:current_syntax = 'myCalendar'

let &cpoptions = s:cpo_save
unlet! s:cpo_save
