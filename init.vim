" Auto install vim-plug plugin manager if not installed
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

" List plugins to be loaded
call plug#begin('~/.config/nvim/plugins')
Plug 'knubie/vim-kitty-navigator'
call plug#end()

if plug_install
    PlugInstall --sync
endif
unlet plug_install

 
" Personalised settings
set hidden			" Possibility to have more than one unsaved buffers.
set nu rnu			" Line numbering - relative numbering
