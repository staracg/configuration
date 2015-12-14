 1 " Vundle                                                                                                                                 
  2 " Configuration file for vim
  3 set modelines=0     " CVE-2007-2438
  4 set backspace=2     " more powerful backspacing
  5 set nocompatible  " not compatible with the old-fashion vi mode
  6 filetype off      " required!
  7 
  8 " powerline
  9 set rtp+=usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
 10 python from powerline.vim import setup as powerline_setup
 11 python powerline_setup()
 12 python del powerline_setup
 13 
 14 
 15 " http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
 16 " Setting up Vundle - the vim plugin bundler
 17 let iCanHazVundle=1
 18 let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
 19 if !filereadable(vundle_readme)
 20   echo "Installing Vundle.."
 21   echo ""
 22   silent !mkdir -p ~/.vim/bundle
 23   silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
 24   let iCanHazVundle=0
 25 endif
 26 
 27 set rtp+=~/.vim/bundle/vundle/
 28 call vundle#rc()
 29 
 30 " let Vundle manage Vundle
 31 " required!
 32 Bundle 'gmarik/vundle'

34 " My Bundles here:"
 35 Bundle 'Lokaltog/vim-easymotion'
 36 Bundle 'Lokaltog/vim-powerline'
 37 Bundle 'airblade/vim-gitgutter'
 38 Bundle "MarcWeber/vim-addon-mw-utils"
 39 Bundle "tomtom/tlib_vim"
 40 Bundle 'Townk/vim-autoclose'
 41 Bundle 'kien/ctrlp.vim'
 42 Bundle 'scrooloose/nerdtree'
 43 let NERDTreeMinimalUI=1
 44 let NERDTreeWinSize=25
 45 Bundle 'majutsushi/tagbar'
 46 Bundle 'tomtom/tcomment_vim'
 47 Bundle 'tpope/vim-fugitive'
 48 Bundle 'honza/vim-snippets'
 49 Bundle 'garbas/vim-snipmate'
 50 
 51 "Press F1 to open NERDTree
 52 map <F1> :NERDTreeToggle<CR>
 53 call vundle#end()            " required
 54 filetype plugin indent on    " required
 55            
 56 "map vim record mode to none
 57 map q <Nop>
 58 scriptencoding utf-8
 59 set encoding=utf-8                                                                                                                       
 60 set langmenu=en_US.UTF-8
 61 language message en_US.UTF-8
 62 
 63 " Don't write backup file if vim is being called by "crontab -e"
 64 au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

65 " Don't write backup file if vim is being called by "chpass"
 66 au BufWrite /private/etc/pw.* set nowritebackup nobackup
 67 
 68 " General
 69 set autoindent               " enable autoindent
 70 set autoread                 " auto read when file is changed from outside "
 71 set expandtab                " use space instead of tab  "
 72 set history=1000             " keep 50 lines of command line history  "
 73 set nu                       "set line number
 74 set ru                       "ruler
 75 syntax on                    "syntax highlighting 
 76 set cursorline               "cursorline highlighting
 77 set scrolloff=5              "the minimal screen line above/below the cursor
 78 set laststatus=2             "狀態列
 79 set clipboard=unnamed        " yank to the system register (*) by default"
 80 set wildmenu
 81 set smarttab
 82 set tabstop=4                "tab=4space
 83 set shiftwidth=4             ">>,<< for 4space"
 84 set bs=2                     "open the backspace"" 
 85 set t_Co=256
 86 set showmatch                " Cursor shows matching ) and }
 87 set showmode                 " Show current mode  "
 88 highlight Comment ctermfg=blue
 89                                                                             
