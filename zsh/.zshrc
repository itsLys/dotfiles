# --- Core ---
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

# --- History ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history hist_ignore_dups

# --- Completion ---
autoload -Uz compinit && compinit

# --- Plugins (manual, no framework) ---
# Clone these once:
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Prompt (minimal, no powerline) ---
PROMPT='%F{cyan}%~%f %# '

# --- Aliases ---
alias ll='ls -lah'
alias nv='nvim'
alias t='tmux'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
