## Setting ZSH

### Install Git
Ubuntu `sudo apt-get install git-all`
Mac usually has been installed
More details can be seen (here)[https://git-scm.com/book/en/v2/Getting-Started-Installing-Git]

### Install Curl/Wget

### Install Zsh
More details can be seen (here)[https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH]

### Install Oh-my-zsh
More details can be seen (here)[http://ohmyz.sh/]

### Install Powerlevel9k Theme
More details can be seen (here)[https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-1-install-powerlevel9k]

Copy-paste in .zshrc file

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
