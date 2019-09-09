execute pathogen#infect()
syntax on
filetype plugin indent on
:set number
:set tabstop=4

:colo sol-term

" vimtex config
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" ultisnipts
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" Latex build
function! BuildAndOrganize()
	silent exe "normal \lk"
	silent write!
	silent exec "!pdflatex %"
	redraw!
	silent exe "normal \ll"
endfunction

command LM call BuildAndOrganize()
