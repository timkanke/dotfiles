

set nocompatible              " be iMproved, required
filetype off                   " required

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
" Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'vim-scripts/TeX-9'
Plugin 'vim-latex-live-preview'
Plugin 'jakykong/vim-zim'
" Plugin 'coot/atp_vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Synastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => enable solarized colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
colorscheme solarized
let g:solarized_termcolors=16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:powerline_pycmd="py3"
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Map keys for plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spelling 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      Action                   	Shortcut
"      next spelling            	]s
"      previous spelling 	        [s
"      spelling suggestions 	        z=
"      spelling good, add 	        zg
"      spelling good, session 	        zG
"      spelling wrong, add 	        zw
"      spelling wrong, session 	        zW
"      spelling repeat all in file 	:spellr
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spell


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamedplus     " Make use of system clipboard
set relativenumber number

"set textwidth=80              " add color column line
"set colorcolumn=+1


filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
    " Makefile users
"let g:tex_nine_config.compiler= {
"\'compiler': 'make',
"\'verbose': 1
"\}

let mapleader = ";"

"command! CompilePdfLatex :!(cd %:p:h && pdflatex -output-directory=build % > /dev/null 2>&1 && pdfopen -r -v xpdf build/%:t:r.pdf)
"nnoremap <buffer> <leader>c :silent CompilePdfLatex<CR>
"
" Quick Markdown Preview

map <F8> :w!<CR>:w!/home/tim/tmp/vim-markdown.md<CR>:!pandoc -s -t revealjs -f markdown \ -o /home/tim/tmp/vim-markdown.html /home/tim/tmp/vim-markdown.md<CR>:!firefox /home/tim/tmp/vim-markdown.html > /dev/null 2> /dev/null&<CR><CR>



"map <F8> :w!<CR>:w!/home/tim/tmp/vim-markdown.md<CR>:!pandoc -s -f markdown -t html -o /home/tim/tmp/vim-markdown.html /home/tim/tmp/vim-markdown.md<CR>:!firefox /home/tim/tmp/vim-markdown.html > /dev/null 2> /dev/null&<CR><CR>
