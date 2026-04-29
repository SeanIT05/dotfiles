#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
set -o vi
export QT_QPA_PLATFORMTHEME=qt6ct
export EDITOR='micro'
export VISUAL='micro'
# --- XDG Cleanliness ---
export CARGO_HOME="$HOME/.local/share/cargo"
export RUSTUP_HOME="$HOME/.local/share/rustup"
export NPM_CONFIG_USERCONFIG="$HOME/.config/npm/npmrc"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$HOME/.config/java"
export W3M_DIR="$HOME/.local/share/w3m"
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nv"
export CUDA_CACHE_PATH="$HOME/.cache/nv"

# Move Bash History out of the way
export HISTFILE="$HOME/.cache/bash_history"
# Ensure profile is sourced
export USER_WM="bspwm"
HISTSIZE= HISTFILESIZE= # Infinite history.
eval "$(starship init bash)"

# Source external alias definitions
if [ -f ~/.config/bash/aliasrc ]; then
  source ~/.config/bash/aliasrc
fi

