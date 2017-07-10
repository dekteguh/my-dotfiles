## Setting ZSH

### Install Git
- Ubuntu `sudo apt-get install git-all`
- Mac usually has been installed

More details can be seen [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Install Curl/Wget
- Link curl [here](https://askubuntu.com/questions/259681/the-program-curl-is-currently-not-installed)
- Link wget [here](https://askubuntu.com/questions/883669/how-to-install-wget-on-ubuntu-14-04)
- Mac, you can use homebrew, link [here](https://brew.sh/)

### Install Zsh
More details can be seen [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

### Install Oh-my-zsh
More details can be seen [here](http://ohmyz.sh/)

### Install Powerlevel9k Theme
More details can be seen [here](https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-1-install-powerlevel9k)

- Install Font Powerline for awesome-patched mode, details [here](https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy/patched)
- Install Font Powerline, details [here](https://github.com/powerline/fonts)

Copy-paste in .zshrc file

```ruby
  ZSH_THEME="powerlevel9k/powerlevel9k"

  POWERLEVEL9K_MODE='awesome-patched'
  POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time ram battery)
  POWERLEVEL9K_CONTEXT_TEMPLATE="%n"

# Customizing `context` colors for root and non-root users
  POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
  POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
  POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="023"
  POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="white"
 
  POWERLEVEL9K_OS_ICON_BACKGROUND="088"
  POWERLEVEL9K_OS_ICON_FOREGROUND="white"
  POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
  POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
  DISABLE_AUTO_TITLE="true"
```
