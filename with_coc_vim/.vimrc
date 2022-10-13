syntax on

" file type specific settings
filetype on " enable file type detection
filetype plugin on " load the plugins for specific file types
filetype plugin indent on " automatically indent code

let g:coc_disable_startup_warning = 1
" by google style guide
set ts=2 sts=2 sw=2 et ai si
set number

"For molokai theme
set t_Co=256
set background=dark
let g:molokai_original = 1
colorscheme  molokai  

"set rnu -> Relative line numbers  

call plug#begin()

Plug 'neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
 
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"set termguicolors

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" write settings
set confirm " confirm :q in case of unsaved changes
set nobackup " do not keep the backup~ file

" Highlight matching search patterns
set hlsearch
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used

" display settings
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
" Speed up scrolling in Vim
set ttyfast

" Display options
set showcmd 
