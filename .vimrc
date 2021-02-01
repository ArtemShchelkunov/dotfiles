
" Shchelkunov Artem				.vimrc
"
" ---------------------------------------------------------------------
syntax on

set nocompatible              			" be iMproved, required
set laststatus=2				" Powerline config
set t_Co=256					" Powerline config

set relativenumber
set number
set path+=**
set wildmenu
set enc=utf-8

" Для romainl/vim-cool
set hlsearch              
hi Search ctermbg=Cyan
hi Search ctermfg=Black

let &t_ZH="\e[3m" " Добавляем поддержку италика
let &t_ZR="\e[23m"

filetype off                  			" required

" XDG_BASE_DIRECTORY
" ---------------------------------------------------------------------
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
set viewdir=$XDG_DATA_HOME/vim/view | call mkdir(&viewdir, 'p')

set backupdir=$XDG_CACHE_HOME/vim/backup | call mkdir(&backupdir, 'p')
set directory=$XDG_CACHE_HOME/vim/swap   | call mkdir(&directory, 'p')
set undodir=$XDG_CACHE_HOME/vim/undo     | call mkdir(&undodir,   'p')

if !has('nvim') | set viminfofile=$XDG_CACHE_HOME/vim/viminfo | endif

" Remaps
" ---------------------------------------------------------------------
" Disable arrow keys
" nnoremap <Up> :echo "Press k instead"<CR>
" vnoremap <Up> :<C-u>echo "Press k instead"<CR>
" inoremap <Up> <C-o>:echo "Press k instead"<CR>
"
" nnoremap <Down> :echo "Press j instead"<CR>
" vnoremap <Down> :<C-u>echo "Press j instead"<CR>
" inoremap <Down> <C-o>:echo "Press j instead"<CR>
"
" nnoremap <Left> :echo "Press h instead"<CR>
" vnoremap <Left> :<C-u>echo "Press h instead"<CR>
" inoremap <Left> <C-o>:echo "Press h instead"<CR>
"
" nnoremap <Right> :echo "Press l instead"<CR>
" vnoremap <Right> :<C-u>echo "Press l instead"<CR>
" inoremap <Right> <C-o>:echo "Press l instead"<CR>

" Little Improvements
" ---------------------------------------------------------------------
" run python script on F5 press
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' 
			\ shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' 
			\ shellescape(@%, 1)<CR>

" NERDtree config
autocmd VimEnter * if &filetype ==# 'python' | NERDTreeFind | 
			\ wincmd p | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif

" Path for modules
" ---------------------------------------------------------------------
set rtp+=~/"$XDG_CONFIG_HOME"/vim/bundle/Vundle.vim 		" Vundle
set rtp+=~/.config/powerline/bindings/vim	" Powerline


" Vundle Dependencies
" ---------------------------------------------------------------------
call vundle#begin()				" Vundle
Plugin 'VundleVim/Vundle.vim'			
Plugin 'tpope/vim-fugitive'			
Plugin 'git://git.wincent.com/command-t.git'	
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}	

" My plugins 
" ---------------------------------------------------------------------

" Markdown + dependency
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Vim tables
Plugin 'dhruvasagar/vim-table-mode'

" Code indent highlighter
Plugin 'Yggdroot/indentLine'
"
" NERDTree file manager
Plugin 'preservim/nerdtree'

" Auto toggle highlight when searching
Plugin 'romainl/vim-cool'

" Add command surround
Plugin 'tpope/vim-surround'

" Add repeat to new installed commands ( . )
Plugin 'tpope/vim-repeat'

" HTML snippets ctrl-y,
Plugin 'mattn/emmet-vim'

" Comment stuff out
Plugin 'tpope/vim-commentary'

" ---------------------------------------------------------------------
" All of your Plugins must be added before the following line

" Vundle Dependencies
" ---------------------------------------------------------------------
call vundle#end()            			" Vundle required
filetype plugin indent on    			" Vundle required
" auto-approve removal				" Vundle
