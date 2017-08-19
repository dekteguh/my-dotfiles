![](screenshoot-tmux-and-vim.png?raw=true)

# my-dotfiles

Simple setting to code via vim

## How to Install

- Be sure that you have installed git
- Be sure that you have installed [oh-my-zsh]('http://ohmyz.sh/')
- Download [iTerm2ColorScheme](http://iterm2colorschemes.com/), Import colorscheme in Profile iTerm Terminal, Select colorscheme and see the result in Terminal
-- Clone Vundle and add to `~/.vim/bundle` using command `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- Clone or download or copy paste my vimrc
- Install using command `vim +PluginInstall +qall`
- Open Terminal and see what's happen
- There are some colorschemes available in colorscheme plugin, you can edit and see the result

## Tmux Configuration

- To use tmux, open Terminal, then type `tmux`
- To make horizontal pane, type `Ctrl+a` at the same time, then type `-`
- To make vertical pane, type `Ctrl+a` at the same time, then type `|`
- To move from one pane to others, type `Alt+ (arrow Up, Down, Left, Right)`
- To close session of tmux/pane, type `Ctrl+d`
