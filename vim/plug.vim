" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!mkdir -p ~/.vim/autoload'
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

  Plug 'alx741/vinfo'

  Plug 'suan/vim-instant-markdown'

  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

      let g:UltiSnipsExpandTrigger="<tab>"
      let g:UltiSnipsJumpForwardTrigger="<c-j>"
      let g:UltiSnipsJumpBackwardTrigger="<c-k>"

      " where :UltiSnipsEdit show snippets
      let g:UltiSnipsEditSplit="vertical"

  Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
  \| Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

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

call plug#end()

