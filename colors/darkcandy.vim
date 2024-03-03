" Vim color file
" Name: Custom Grey
" Author: Your Name

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "custom_grey"

" General colors
let s:fg_norm = "#B2B2B2" " Normal text
let s:bg = "#1C1C1C" " Background
let s:fg_dim = "#7C7C7C" " Dim text
let s:fg_bright = "#ECECEC" " Bright text

" Specific syntax colors
let s:keyword = "#C481FF"
let s:string = "#6EF8BE"
let s:function = "#FAE702"
let s:error = "#FF0055"

" General UI
exec "hi Normal guifg=" . s:fg_norm . " guibg=" . s:bg
exec "hi Comment guifg=" . s:fg_dim
exec "hi LineNr guifg=" . s:fg_dim
exec "hi VertSplit guifg=" . s:fg_dim . " guibg=" . s:bg
exec "hi StatusLine guifg=" . s:fg_norm . " guibg=" . s:fg_dim
exec "hi StatusLineNC guifg=" . s:fg_dim . " guibg=" . s:bg
exec "hi Visual guibg=" . s:fg_dim

" Syntax highlighting
exec "hi Keyword guifg=" . s:keyword
exec "hi String guifg=" . s:string
exec "hi Function guifg=" . s:function
exec "hi Error guifg=" . s:error . " guibg=" . s:bg . " gui=bold"

" More syntax rules can be added as needed
