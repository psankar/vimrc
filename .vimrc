set autoindent
set backup
set nu
set smartindent
set showmatch
set textwidth=80
set title
set incsearch
set hlsearch

" always show file name
set modeline
set ls=2

" Start vim in maximized mode
set lines=999 columns=999
set guifont=Cousine\ 11

" Remove toolbar incase of gvim
set guioptions-=T

" Do not let the cursor go until the edge of the screen
set so=14

" colorscheme
colorscheme molokai
" https://github.com/tomasr/molokai

" files
filetype on
filetype indent on
filetype plugin on

" syntax
syntax on

" Highlight cursor line.
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  au WinLeave * setlocal nocursorline
"  au WinLeave * setlocal nocursorcolumn
augroup END

" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Map F8 for new tab
imap <F8> :tabnew
map <F8> :tabnew

" Map F2 for save
imap <F2> :w
map <F2> :w

" Call Pathogen for bundle maintenance
execute pathogen#infect()

" Plugins Needed
" http://cscope.sourceforge.net/cscope_maps.vim
" http://www.vim.org/scripts/script.php?script_id=273 - TagList
" vim-plugin-gitdiff
" vim-plugin-multiplesearch
" vim-plugin-showmarks
" https://github.com/tpope/vim-pathogen
" https://github.com/scrooloose/syntastic
" https://github.com/Valloric/YouCompleteMe
