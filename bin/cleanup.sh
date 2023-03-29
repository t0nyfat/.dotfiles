#!/bin/bash
# Removing .vimrc from home directory
rm ~/.vimrc
# Removing command from .bashrc in home directory
sed -i 's/source\ ~\/.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc
# Removing TRASH from the home directory
rm -r ~/.TRASH

