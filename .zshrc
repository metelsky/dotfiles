LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"

eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HISTORY_IGNORE='(cd|ls|vim) *'

alias g='git'
alias ga='git add'
alias gl='git pull'
alias gp='git push'

alias gst="git status -suno"
alias gcm="git commit -m"
alias gco="git checkout"
alias gaa="git add ."

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias s="cd ~/Sites"
alias gm="git merge"