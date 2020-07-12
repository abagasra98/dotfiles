call plug#begin()

" Themes
Plug 'drewtempelmeyer/palenight.vim'

" Enhancements
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'

" Comfort
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
 
" Languages
Plug 'sheerun/vim-polyglot'

call plug#end()

set termguicolors
colorscheme palenight
set background=dark
hi Normal guibg=NONE ctermbg=NONE

syntax on

set nowrap
set noshowmode
set autoindent
set mouse=a
set number
set numberwidth=3

" Code Folding
set foldenable
set foldmethod=syntax
set foldlevel=99

let g:indentLine_setColors = 0
let g:indentLine_char = '│'
let g:python_highlight_all=1
let g:goyo_width = '80%'
" let g:goyo_height = '90%'

" writing/prose
autocmd FileType markdown set spell spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" remaps
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Ω is alt + z
nnoremap Ω :Goyo<CR>
" ç is alt + c
nnoremap ç :Limelight!!<CR>
nnoremap <A-Right> :bn<CR>
nnoremap <A-Left> :bp<CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
command! MakeTags !ctags -R .

source ~/.config/nvim/statusline.vim
