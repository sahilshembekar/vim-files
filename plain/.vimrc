" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" display settings
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode

" write settings
set confirm " confirm :q in case of unsaved changes
set nobackup " do not keep the backup~ file

" edit settings
set backspace=indent,eol,start " backspacing over everything in insert mode

" Turn on syntax highlighting.
syntax on

" Automatically wrap text that extends beyond the screen length.
set wrap

" Show line numbers
set number

syntax enable

" For Solarized theme
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

" For molokai theme
set t_Co=256
set background=dark
let g:molokai_original = 1
colorscheme  molokai  

			
" Highlight matching search patterns
set hlsearch
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used


" file type specific settings
filetype on " enable file type detection
filetype plugin on " load the plugins for specific file types
filetype indent on " automatically indent code

" Speed up scrolling in Vim
set ttyfast

" Display options
set showmode
set showcmd
