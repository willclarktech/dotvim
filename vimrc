" basics
set ruler
set number
set numberwidth=5
set showcmd
" colorscheme torte
syntax on

" width
set textwidth=100
set colorcolumn=+1

" tabs
set tabstop=2
set shiftwidth=2
set noexpandtab

" display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·,eol:◊
set list listchars=tab:»·,trail:·,nbsp:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Plugins
execute pathogen#infect()
Helptags
filetype plugin on
filetype plugin indent on
colorscheme srcery
