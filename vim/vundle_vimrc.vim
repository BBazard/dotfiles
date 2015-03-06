filetype off " disable filetype detection ; required by Vundle

" set the runtime path to include Vundle ; required by Vundle
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

  " let Vundle manage Vundle ; required by Vundle
  Plugin 'gmarik/Vundle.vim'

  Plugin 'alx741/vinfo'

  Plugin 'Valloric/YouCompleteMe' " {{{2

  " set up You Complete Me :
  " cd ~/.vim/bundle/YouCompleteMe
  " ./install.sh --clang-completer --omnisharp-completer

    " use .ycm_extra_conf.py in the current directory or the one below
    let g:ycm_global_ycm_extra_conf = ""
    " don't ask confirmation
    let g:ycm_confirm_extra_conf = 0

    " disable tab as a key for autocompletion (for ultisnips)
    let g:ycm_key_list_select_completion=[]
    let g:ycm_key_list_previous_completion=[]

    " turn off the identifier completion engine
    " but leave the semantic engine
    let g:ycm_min_num_of_chars_for_completion = 99

    " }}}2

  Plugin 'SirVer/ultisnips' " {{{2

    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"

    " where :UltiSnipsEdit show snippets
    let g:UltiSnipsEditSplit="vertical"

    " }}}2

call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins
" :PluginClean      - confirms removal of unused plugins

" restore filetype detection options ; required by Vundle
filetype plugin indent on
