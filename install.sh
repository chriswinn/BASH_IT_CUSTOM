#!/usr/bin/env bash
# BASH config file installer

# Create a '~/.bash_profile' file via a symlink.
#   ...so any future customizations can be tracked here
ln -s ~/.dot/CUSTOM/bash_profile ~/.bash_profile

# Create a '~/.bashrc' file via a symlink.
#   ...so any future customizations can be tracked here
ln -s ~/.dot/CUSTOM/bashrc ~/.bashrc

# Create a '~/.tmux.conf' file via a symlink.
#   ...so any future customizations can be tracked here
ln -s ~/.dot/CUSTOM/tmux.conf ~/.tmux.conf
