set number
syntax on
set autoindent
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2

set runtimepath^=~/.vim/plugged/dracula
colorscheme masdevallia

"install plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"plugins..
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/beyondmarc/glsl.vim.git'
Plug 'https://github.com/bfrg/vim-cpp-modern'
Plug 'https://github.com/ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
Plug 'https://github.com/dracula/vim'
Plug 'rust-lang/rust.vim'
call plug#end()
"..plugins"
hi Normal guibg=NONE ctermbg=NONE
