""" Comfy vim
""" load on fly with :so %

"general comfies
colorscheme molokai "not default theme btw
syntax on "syntax coloring
highlight MatchParen cterm=underline ctermfg=NONE ctermbg=NONE
highlight MatchParen gui=underline guifg=NONE guibg=NONE
set paste "copypastes to terminal
set number "line numbers
set numberwidth=4 "linenumber columnwidth
set nohlsearch "no search highlighting
set autowriteall "saves settings
set showcmd "shows what command user is giving
set mouse=a "enable mouse

"code indents
set expandtab "tabs to spaces
set shiftwidth=4 "how many spaces
set softtabstop=4 "how many spaces tab converts to
set smarttab "tab sets and bs removes spaces defned by shiftwidth
set autoindent "preserves indent of previous line on enter
set smartindent "indents correctly most of the time

"vimpr0n statusline
set laststatus=2        "statusline always visible
set statusline=%t       "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
set statusline+=%=      "left/right separator
set statusline+=Buffer:%n "buffer number
set statusline+=\ C:%c     "cursor column
set statusline+=\ L:%l/%L   "cursor line/total lines
set statusline+=\ %P     "percent through file

"automatic braces netbeans style
inoremap {<CR> {<CR><BS>}<Esc>ko

"ctrl-bs delets previous word
set backspace=2
imap <C-BS> <C-W>
imap <C-DEL> dw
