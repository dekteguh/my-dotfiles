![](screenshoot-result.png?raw=true)

# my-dotfiles

Simple setting to code via vim

## How to Install

- Be sure that you have installed git
- Be sure that you have installed [oh-my-zsh]('http://ohmyz.sh/')
- Clone Vundle and add to `~/.vim/bundle` using command `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- Clone or download or copy paste my vimrc
- Install using command `vim +PluginInstall +qall`
- Open Terminal and see what's happen

## Change Theme

I've changed my theme to gruvbox in iTerm, .vimrc, and also changed Airline theme.

- Import gruvbox-data.itermcolors to Profile of iTerm
- Activate gruvbox theme in vim (74-76, remove the ")
- Deactivate the solarized theme in vim (80-83, add the ")
- Deactivate line 98, add " and change line 99 theme solarized to `luna`
- See what's happen

![](screenshoot-gruvbox.png?raw=true)
