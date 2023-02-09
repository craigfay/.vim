


"Open quickfix windows in a full-width split
botright cwindow

"Use a newer regex engine to speed up syntax highlighting
set re=2

"Enable Syntax Highlighting
syntax enable

"Color Scheme
colorscheme dogrun

"Press Shift + S to get the syntax group of the word under the cursor
nmap <S-S> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"Enable Line Numbers
set number

" Disable generation of .swp files
set noswapfile

"Change the default leader key
let mapleader = ','

"Easily edit the vimrc file
nmap <Leader>rc :tabedit $MYVIMRC<cr>

"Easily edit the shell profile
nmap <Leader>pr :tabedit ~/.profile<cr>

"Easily list the path of the file in the buffer
nmap <Leader>fp :echo expand('%:p')<cr>

"Creating an allias for vertical split resizing
command! -nargs=1 Vr vertical resize <args>

"Use the command `L` to explore files with Lex at 20%
command! L 20Lex<args>

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

"On pressing tab, insert spaces
set expandtab

"file specific tabsizes
autocmd Filetype ts setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype svelte setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype html setlocal shiftwidth=4 tabstop=4 softtabstop=2
autocmd Filetype rs setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype py setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd Filetype kt setlocal shiftwidth=4 tabstop=4 softtabstop=4



"Auto indent
set autoindent

"Show Whitespace
set list
set listchars=tab:›\ ,eol:¬,trail:⋅

"Automatically update file diffs
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

"Initiate a plugin-less 'fuzzy find' with ctrl-p
nnoremap <C-p> :find ./**/*

"Show matches for file searches above the command line
set wildmenu


"Use a vertical (pop-up-menu) wildmenu for autocomplete
set wildoptions=pum

"Highlight all search matches
set hlsearch

"Turn off highlighting once the search is finished
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

"Highlight the current line
set cursorline

"Stop vim from beeping at mistakes, show a flash on the screen instead
set visualbell

"Ignore patterns during wildcard searches
set wildignore+=*/.git/*,*/node_modules/*,*/target/*,*/.hg/*,*/.svn/*.,*/.DS_Store

"Use relative line numbers
set relativenumber

"Make searches case insensitive unless a capital letter is used
set ignorecase
set smartcase


"Configuring the status line
set statusline=
"buffer number
set statusline +=%1*\ %n\ %*
"current file name
set statusline+=%f\ %2*%m\ %1*%h
"warning messages if exist
set statusline+=%#warningmsg# 
"source control details
set statusline+=%{fugitive#statusline()}
"file is modified flag
set statusline+=%*
"file encoding, file format, file type
set statusline+=%r%=[%{strlen(&ft)?&ft:'none'}\ %{&encoding}]\ %12.(%c:%l/%L%)\
"Character under cursor
set statusline +=%f\ 0x%04B\ %*


"Always give the last window a status line
set laststatus=2

"Highlight marked files in netrw
hi! link netrwMarkFile Search

"Enable Nested Syntax Highlighting in Markdown Files
let g:markdown_fenced_languages = ['html', 'python', 'js', 'rust']

"Keep the current dir and browsing dir synced
"This helps avoid errors when moving marked files
let g:netrw_keepdir = 0

"Allow svelte-vim plugin to recognize nested typescript
let g:svelte_preprocessors = ['typescript']

"Use a non-deprecated snippet format
let g:snipMate = { 'snippet_version' : 1 }


