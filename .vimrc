set number
set ic
set guifont=Ubuntu\ Mono\ 14
set incsearch
set hlsearch

execute pathogen#infect()
syntax on
filetype plugin indent on


" Start vim in maximized mode
set lines=999 columns=999

" Remove toolbar incase of gvim
set guioptions-=T

" 256 colors for molokai
let g:rehash256 = 1
colorscheme molokai
"colorscheme wombat

" vim-go options
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let NERDTreeQuitOnOpen = 1

" YCM options after these other plugins (the defaults of vim-go changed somehow)
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
set completeopt-=preview

nnoremap <F8> :TagbarToggle
nnoremap <F12> :NERDTreeToggle<CR>

map <Space> <PageDown>
map <S-Space> <PageUp>
nnoremap <F2> :w! <CR>
nnoremap <C-s> :w! <CR>

map <C-x> "+x
map <C-c> "+y 
imap <A-v> "+gPi
map <F10> <Esc>;call ToggleGUICruft()<cr>
map <F11> ;set fullscreen<cr>

" by default, hide gui menus
set guioptions=i

" show the cursor line
set cursorline

nnoremap ; :
nnoremap : ;

" Tab Control (others)
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> gtl
