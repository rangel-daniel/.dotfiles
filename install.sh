#!/usr/bin/env bash
# Install .dotfiles

dotfiles_dir="$HOME/.dotfiles"
config_dir="$HOME/.config"

ln -s "$dotfiles_dir/nvim" "$config_dir/nvim"
ln -s "$dotfiles_dir/tmux" "$config_dir/tmux"

ln -s "$dotfiles_dir/.gitconfig" "$HOME/.gitconfig"

echo "Done!"
