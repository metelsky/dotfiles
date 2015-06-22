LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8

# ZSH Setup
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=minimal
COMPLETION_WAITING_DOTS="true"
plugins=(git rails bundler brew sublime vagrant z)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

