
"Open quickfix windows in a full-width split
botright cwindow

"Enable Syntax Highlighting
syntax enable

"Color Scheme
colo dogrun

"Enable Line Numbers
set number

" Disable generation of .swp files
set noswapfile

"Change the default leader key
let mapleader = ','

"Easily edit the vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Automatically source the vimrc file on save. The group keeps vim from sourcing recursively.
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vim/vimrc source %
augroup END


"Use incremental search
set incsearch

"Always have splits be below and right
set splitbelow
set splitright


"Tabs
filetype plugin indent on

"show existing tab with 4 spaces width
set tabstop=4

"when indenting with '>', use 4 spaces width
set shiftwidth=4

"file specific tabsizes
autocmd Filetype ts setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype rs setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype py setlocal shiftwidth=4 tabstop=4 softtabstop=4

"On pressing tab, insert spaces
set expandtab

"Auto indent
set autoindent

"Show Whitespace
set list
set listchars=tab:›\ ,eol:¬,trail:⋅

"Automatically update file diffs
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

"Automatically change directories when opening files
set autochdir

"svelte-vim pluggin settings
let g:svelte_preprocessors = ['typescript']


" Vim Tips
" - Use <g><q><q> to format long markdown lines nicely.
" - Use <g><j> to move down to the next perceived line when a line is
"   wrapping.
" - Use <d><i><{> to delete everything inside the current curly bracket.
"   This works with other characters as well, like parentheses, quotes, and
"   square brackets. <c><i><t> works for HTML tags.
" - Use <c><i> ('change inner') the same way you would use <d><i>
" - Use <.> in normal mode to repeat the last command
" - Use <g><g><=><G> in normal mode to reformat the entire file
" - Use :vimgrep 'pattern' filepath to search the codebase, and :cn, :cp,
"   :cnf, :cnp to jump between matches. Use :cr to return to the first match.
" - After selecting in visual mode, use <"><*><y> to copy to the system
"   clipboard
" - use :b <tab> to cycle through all open (buffered) files
" - use <ctrl> <n> to autocomplete. Hold <ctrl> and use <n> and <p> to scroll
" - use <ctrl><x><f> to autocomplete filenames
" - use <i> in netrw to toggle list style
" - use <I> in netrw to hide banner
" - use :only to close all other splits except the current
" - use <t> from netrw to open a file in a new tab
" - use <g><t> and <g><T> to cycle through tabs
" - use <1><g><t> to go to the first tab
" - use <g><f> to open the file whose name you're hovering over
" - use :b# to open the previous buffer
"
