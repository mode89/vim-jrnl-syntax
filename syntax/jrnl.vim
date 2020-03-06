if exists("b:current_syntax")
    finish
endif

syn match jrnlDate "\d\d\d\d-\d\d-\d\d" contained
syn match jrnlTime "\d\d:\d\d" contained
syn region jrnlRecordHeader start="^\d\d\d\d-\d\d-\d\d" end="$" contains=jrnlDate,jrnlTime

let b:current_syntax = "jrnl"

hi def link jrnlDate            Type
hi def link jrnlTime            Type
hi def link jrnlRecordHeader    Identifier
