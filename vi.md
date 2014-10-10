# VI(M) tips and tricks

Most of these commands/features can be turned off by prefixing them with `no`.

# Configurations

## Must haves (in vimrc)
* `set nocompatible` : Stop trying to be compatible with vi.  This breaks various useful features
* `set bs=2` : Smarter backspace behaviour
* `set expandtab` : Spaces are better than a tab character
* `set smarttab` : 
* `set shiftwidth=3` : number of spaces for (auto)indent
* `set softtabstop=3` : 
* `set background=dark` : Use colors that look good on a dark background
* `syntax on` : Enable syntax highlighting
* `filetype on` : Needed for syntax highlighting
* `filetype plugin on`
* `set wildmenu` : tab completion for : commands
* `set wildmode=list:longest,full` : more tab completion
* `set mouse=a` : Enable mouse support (yay!)
* `set showcmd` : Show what command you're typing
* `set ignorecase` : Ignore case when searching
* `set incsearch` : Incremental search
* `set hlsearch` : Highlight what we're searching
* `set nohidden` : Remove buffer when closing tab

## Set when needed

* `set columns=80` : set window column width to 80 (or something else)
* `set number` : set line numbers

# Tricks

* Use tabs - start vi with `-p`
  See: [http://www.linux.com/learn/tutorials/442422-vim-tips-using-tabs]:wq
  See: [http://vim.wikia.com/wiki/Using_tab_pages]

# Want more?

* Search google for "what's in your vimrc?"
* See: http://vimdoc.sourceforge.net/htmldoc/
