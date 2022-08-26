if exists('b:current_syntax')
  finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

syntax match myCalendarDate /^☢ \[\d\+] --> \d\+-\d\+-\d\+ (.*)/
syntax match myCalendarUnfinishedTask /^\s*-.*/
syntax match myCalendarLateTask /^\s*\/.*/
syntax match myCalendarFinishedTask /^\s*+.*/
syntax match myCalendarMeeting /^\s*\*.*/

highlight myCalendarDate gui=bold ctermfg=11 
highlight myCalendarFinishedTask ctermbg=13 guifg=#7FDE7F guibg=#005f00 guisp=Magenta
highlight myCalendarLateTask ctermbg=13 guifg=#E6E600 guibg=#999900 guisp=Magenta
highlight myCalendarUnfinishedTask ctermfg=12 ctermbg=6 guifg=#C56666 guibg=#5F0000
highlight myCalendarMeeting ctermfg=12 ctermbg=6 guifg=#9e99ff guibg=#06008a

let b:current_syntax = 'myCalendar'

let &cpoptions = s:cpo_save
unlet! s:cpo_save
