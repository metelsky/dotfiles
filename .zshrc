LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"

eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"


autoload -U compinit; compinit
[[ -f ~/fzf-tab/fzf-tab.plugin.zsh ]] && source ~/fzf-tab/fzf-tab.plugin.zsh
# source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HISTORY_IGNORE='(cd|ls|vim) *'

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_all_dups  # Remove older duplicates
setopt hist_find_no_dups
setopt hist_reduce_blanks    # Remove superfluous blanks
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

setopt auto_cd              # Type directory name to cd
setopt auto_pushd           # Make cd push old directory onto stack
setopt pushd_ignore_dups
setopt correct              # Spell correction for commands
setopt interactive_comments # Allow comments in interactive shell
setopt extended_glob        # Extended globbing  

# Compeltion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons=never $realpath'

#alias ls='ls -G'  # macOS uses -G instead of --color
alias ls='eza --icons=never'
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

alias ..="cd .."
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Added by Antigravity
export PATH="/Users/andreymetelsky/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"

