
command! Ctags execute '!ctags -R .' | echo "tags generated!"

"Open quickfix windows in a full-width split
botright cwindow

"Use a newer regex engine to speed up syntax highlighting
set re=2

"Enable Syntax Highlighting
syntax enable

"Color Scheme
colorscheme dogrun
set background=dark

"Press Shift + S to get the syntax group of the word under the cursor
nmap <S-S> :call <SID>SynStack()<CR>
function! <SID>SynStack()
if !exists("*synstack")
    return
endif
echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"Shorten the time it takes for markers to appear
"This is helpful for the vim-gitgutters plugin
set updatetime=100

"Enable Line Numbers
set number

" Disable generation of .swp files
set noswapfile

"Change the default leader key
let mapleader = ','

"Quickly edit the default vimrc file with `,drc`
nmap <Leader>drc :tabedit $MYVIMRC<cr>

"Quickly edit ~/.vim/vimrc file with `,rc`
"This is helpful when you're using neovim,
"where $MYVIMRC will point to neovim config
nmap <Leader>rc :tabedit ~/.vim/vimrc<cr>

"Quickly edit the shell profile with `,pr`
nmap <Leader>pr :tabedit ~/.profile<cr>

"Quickly list the path of the file in the buffer with `,f`
nmap <Leader>f :echo expand('%:p')<cr>

"Quickly open a file explorer with `,e`
nmap <Leader>e :e .<cr>

"Quickly open a file explorer (in a vertical split) with `,v`
nmap <Leader>v :vs .<cr>

"Quickly open a file explorer (in a horizontal split) with `,s`
nmap <Leader>s :sp .<cr>

"Quickly open the previous buffer with `,b`
nmap <Leader>b :b#<cr>

"Quickly close the current buffer with `,q`
nmap <Leader>q :q<cr>

"Quickly write the current buffer with `,w`
nmap <Leader>w :w<cr>

"Quickly open netrw with ,e
nmap <Leader>e :e .<cr>

"Switch to a preferred light color theme
command! -nargs=0 Light :color retrobox | set background=light

"Switch to a preferred dark color theme
command! -nargs=0 Dark :color dogrun | set background=dark

"Creating aliases for split resizing
command! -nargs=1 Vr vertical resize <args>
command! -nargs=1 Hr resize <args>

"Creating a shortcut for the vimgrep command
command! -nargs=* Vg vimgrep <args>

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

"Remapping scrolling behavior to use CTRL + J and CTRL + K,
"and SHIFT to scroll much faster
nnoremap <C-k> <C-y>
nnoremap <C-j> <C-e>
nnoremap <S-C-k> 15<C-y>
nnoremap <S-C-j> 15<C-e>

"Making SHIFT + directional buttons move the cursor faster in normal mode
nnoremap J 4j
nnoremap K 4k
nnoremap H 4h
nnoremap L 4l

"Leaving a few lines above and below the cursor when scrolling
"to make it easier to see where you're going
set scrolloff=4

"Show matches for file searches above the command line
set wildmenu

"Use a vertical (pop-up-menu) wildmenu for autocomplete
if v:version >= 900
    set wildoptions=pum
endif

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
set wildignore+=*/.git/*,*/node_modules/*,.next/*,*/target/*,*/.hg/*,*/.svn/*.,*/.DS_Store

"Use relative line numbers
set relativenumber

"Make searches case insensitive unless a capital letter is used
set ignorecase
set smartcase

"Make the amount of max signs for vim-gitgutter unlimited
"Consider changing this if performance struggles
let g:gitgutter_max_signs = -1

"Configuring the status line
set statusline=

"buffer number
set statusline +=%1*\ %n\ %*

"current file name
set statusline+=%f\ %2*%m\ %1*%h

"warning messages if exist
set statusline+=%#warningmsg# 

"source control details
if exists("*fugitive#statusline")
    set statusline+=%{fugitive#statusline()}
endif

if exists("*GitGutterGetHunkSummary")
  function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
  endfunction

  set statusline+=%{GitStatus()}
endif


"file is modified flag
set statusline+=%*

"file encoding, file format, file type
set statusline+=%r%=[%{strlen(&ft)?&ft:'none'}\ %{&encoding}]\ %12.(%c:%l/%L%)\ 

"Character under cursor
set statusline+=%f\ 0x%04B\ %*

set statusline+=%{wordcount()['words']}\ words\ 

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

"Always show the column dedicated to signs,
"which can be used by LSP plugins. Always showing
"this column prevents jumpiness in the UI
set signcolumn=yes

"Enable a dedicated column for showing fold markers
set foldcolumn=1

"Creating a shortcut for go to definition
nmap <Leader>gd :LspDefinition<CR>

"Creating a shortcut for peeking to definition
nmap <Leader>pd :LspPeekDefinition<CR>

"Creating a shortcut for renaming a symbol
nmap <Leader>rn :LspRename<CR>

"Creating a shortcut for finding references
nmap <Leader>rf :LspReferences<CR>

"Use `gb` to go open a list of buffers.
"Then enter the desired number and press enter to open it.
nnoremap gb :ls<CR>:b<Space>

