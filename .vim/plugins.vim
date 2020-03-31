" for neovim plugins (rplugin)
if has('nvim')
  function! DoRemote(arg)
    UpdateRemotePlugins
  endfunction
endif

" vim-plug 
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim' " Status line at the bottom 

" http://colorswat.ch/vim/
Plug 'kaicataldo/material.vim' " Material collection of colorschemes
Plug 'arcticicestudio/nord-vim' " Nord colorscheme
Plug 'w0ng/vim-hybrid' " Hybrid colorscheme

Plug 'godlygeek/tabular' " Markdown dependency
Plug 'sheerun/vim-polyglot' " Syntax highlighting for many languages 
Plug 'lervag/vimtex' " LaTeX suite 
Plug 'maxmellon/vim-jsx-pretty' " JSX syntax highlighting

" IMPORTANT: these require external dependencies to work  
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion engine
Plug 'dense-analysis/ale' " Code linting, syntax checking
Plug 'Chiel92/vim-autoformat' " Proper auto-formatting
Plug 'majutsushi/tagbar' " Tagbar for viewing functions in file
Plug 'metakirby5/codi.vim'

Plug 'maximbaz/lightline-ale' " Lightline integration for linter 
Plug 'nathanaelkane/vim-indent-guides' " Add visual indent guides 
Plug 'tpope/vim-fugitive' " Git integration for vim
Plug 'mhinz/vim-signify' " Git marks in the gutter 
Plug 'junegunn/gv.vim'
Plug 'kshenoy/vim-signature' " Vim marks in the gutter 
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Hybrid mode for numbers

Plug 'kien/ctrlp.vim' " File search engine 
Plug 'wincent/terminus' " Enable mouse, change cursor mode, etc. 
Plug 'tpope/vim-surround' " Mappings to edit parentheses, brackets, etc.
Plug 'tpope/vim-commentary' " Fast commenting
Plug 'justinmk/vim-sneak' " Fast file jumping
Plug 'dietsche/vim-lastplace' " Saves last edit line for a file

Plug 'neomake/neomake'

Plug 'preservim/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] } " Tree Plugin

Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }

Plug 'ryanoasis/vim-devicons' " Add file type icons

Plug 'jupyter-vim/jupyter-vim' " Jupyter and Vim integration

Plug 'chrisbra/csv.vim'

Plug 'mileszs/ack.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'antoinemadec/coc-fzf'

Plug 'Konfekt/FastFold'

Plug 'tmhedberg/SimpylFold'

Plug 'tpope/vim-abolish'

Plug 'mbbill/undotree'

Plug 'ap/vim-css-color'

Plug 'junegunn/goyo.vim'

Plug 'junegunn/limelight.vim'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'danro/rename.vim'

Plug 'mhinz/vim-startify'

Plug 'cohama/lexima.vim'

Plug 'lambdalisue/suda.vim'

Plug 'jpalardy/vim-slime'

Plug 'psf/black', { 'tag': '19.10b0' }

Plug 'turbio/bracey.vim'

Plug 'cocopon/lightline-hybrid.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
