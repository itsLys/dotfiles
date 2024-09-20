# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode disabled  # disable automatic updates
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
plugins=(
	git
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"
alias vim="nvim"

# Created by `pipx` on 2024-09-17 15:16:39
export PATH="$PATH:/home/lys/.local/bin"
alias config='/usr/bin/git --git-dir=/home/lys/dotfiles/ --work-tree=/home/lys'
