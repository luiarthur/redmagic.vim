```
 ____          _       _
|  _ \ ___  __| |_   _(_)_ __ ___
| |_) / _ \/ _` \ \ / / | '_ ` _ \
|  _ <  __/ (_| |\ V /| | | | | | |
|_| \_\___|\__,_(_)_/ |_|_| |_| |_|

```

A mostly-red vim color scheme.

# Installing the color scheme
You can install `red.vim` by either copying `colors/red.vim` into `~/.vim/colors` (if using vim) or
`~/.config/nvim/colors` (if using neovim). If using the [vim-plug](https://github.com/junegunn/vim-plug)
plugin manager, add the lines
```
call plug#begin()
Plug 'luiarthur/red.vim'
call plug#end()
```
to either `~/.vim/vimrc` (if using vim) or `~/.config/nvim/init.vim` (if using neovim),
then in a (neo)vim session, invoke `:PlugInstall`.

To activate the color scheme, add the line `silent! colorscheme red`
in your `~/.vim/vimrc` or `~/.config/nvim/init.vim`. Alternatively, you
can set the color scheme in your (neo)vim session by typing `:colorscheme red`.
