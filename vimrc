set nocompatible 	" don't try to be compatible with vi
set bs=2		" Smarter backspace behaviour
"set expandtab		" Spaces are better than tab chars
"set smarttab		
"set shiftwidth=3        " number of spaces for (auto)indent
"set softtabstop=3       
set wildmenu		" tab completion for commands
set wildmode=list:longest,full
set mouse=a		" enable mouse (yay!)
set showcmd		" show what command you're typing
set ignorecase		" ignore case when searching
set incsearch		" incremental search
set hlsearch		" highlight search results

" visual
"set number
set t_Co=256
set background=dark
" colorscheme wombat256mod

" maps
map <F2> :tabn<CR>
map <F3> :NERDTree<CR>

filetype off            " required for Vundle

" Use Vundle - see https://github.com/gmarik/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'	" Directory tree
Plugin 'majutsushi/tagbar'	" Sidebar for source file tags
Plugin 'bling/vim-airline'	" Lean and mean status/tagline

Plugin 'airblade/vim-gitgutter'	" Git addition/deletion indications

Plugin 'ervandew/supertab'	" Use <Tab> for insert completion
Plugin 'Raimondi/delimitMate'	" Insert completion for braces, et al.

Plugin 'scrooloose/syntastic'	" Syntax highlighting for many languages
Plugin 'fatih/vim-go'		" Golang support
" disabling instant-markdown for now.  Requires node.js et al.
"Plugin 'instant-markdown.vim'	" Markdown previews (in browser)
Plugin 'Markdown'		" Markdown syntax highlighting
Plugin 'rodjek/vim-puppet' 	" Puppet plugin

" snipMate: insert completion for code snippets
Plugin 'MarcWeber/vim-addon-mw-utils'	" required
Plugin 'tomtom/tlib_vim'		" required
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-fugitive'		" Git plugin

call vundle#end()
filetype plugin indent on  " required for Vundle

" undo
set hidden		" Hide buffer instead of closing to keep undo history
set undodir=~/.undodir
set undofile

" to enable airline
set laststatus=2

" Filetype specific settings.
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Auto format go files when writing to file.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Create line at e.g. 120 characters
" Type \H to enable/disable
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>120v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>120v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction
