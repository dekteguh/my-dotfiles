![alt text](https://github.com/ekoteguhw/my-dotfiles/raw/master/screenshoot.png "Screenshoot")

### Installation

* clone repo to folder `~/.dotfiles` folder using command:

```ruby
cd ~
git clone https://github.com/ekoteguhw/my-dotfiles .dotfiles
```

* create symbolic links using command:

```ruby
ln -s .dotfiles/vimrc ~/.vimrc
ln -s .dotfiles/vim ~/.vim
ln -s .dotfiles/tmux.conf ~/.tmux.conf
ln -s .dotfiles/zshrc ~/.zshrc
ln -s .dotfiles/gitconfig ~/.gitconfig
```

* move cobalt theme to `mv cobalt2-zsh.theme ~/.oh-my-zsh/themes/cobalt2-zsh.theme`
* using font from this repo: `https://github.com/powerline/fonts`. I use font `Inconsolata for powerline`

#### Pre-requirements
* install brew (Mac)
* intall iTerm (Mac)
* install vim
* install tmux
* install git
* install oh-my-zsh
