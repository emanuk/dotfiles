#!/bin/bash

# Very dangerous script for my own use
# It will update the files in $HOME with the content of the project dotfiles
# The script assume that dotfiles is at the root of your $HOME

# backup the corresponding dotfiles files in $HOME
BACKUP=$HOME/backup_dotfiles.`date +%F`.`date +%s`
echo  Creating folder: $BACKUP
mkdir $BACKUP
echo Copy corresponding dotfiles to backup folder
cp -r  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/.vim $BACKUP
echo Done!

# check if .vimtmp exist
if [ ! -d $HOME/.vimtmp ]; then
  mkdir -p .vimtmp/_backup
  mkdir -p .vimtmp/_swap
  mkdir -p .vimtmp/_undo
fi

rm -rf  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/.vim
cp -r   .bash_aliases .screenrc .vimrc .vim $HOME

