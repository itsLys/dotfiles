#!/usr/bin/env bash
DOTFILES="$HOME/dotfiles"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "backing up $dst -> $dst.bak"
    mv "$dst" "$dst.bak"
  fi

  ln -sf "$src" "$dst"
  echo "linked $src -> $dst"
}

link "zsh/.zshrc"                   "$HOME/.zshrc"
link "kitty/kitty.conf"             "$HOME/.config/kitty/kitty.conf"
link "tmux/tmux.conf"               "$HOME/.tmux.conf"
link "nvim"                         "$HOME/.config/nvim"
link "i3/config"                    "$HOME/.config/i3/config"
link "i3status/config"              "$HOME/.config/i3status/config"
link "dunst/dunstrc"                "$HOME/.config/dunst/dunstrc"
link "picom/picom.conf"             "$HOME/.config/picom/picom.conf"
link "gtk-3.0/settings.ini"        "$HOME/.config/gtk-3.0/settings.ini"
link "gtkrc-2.0"                    "$HOME/.gtkrc-2.0"
link "Xresources"                   "$HOME/.Xresources"
link "tmux-fzf-cd.sh"                   "$HOME/.local/bin/tmux-fzf-cd.sh"

echo "done."
