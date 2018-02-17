#!/bin/bash

# Very dangerous script for my own use
# It will update the files in $HOME with the content of the project dotfiles
# The script assume that dotfiles is at the root of your $HOME

# backup the corresponding dotfiles files in $HOME
BACKUP=$HOME/backup_dotfiles.`date +%F`.`date +%s`

echo "git update"
git pull origin master
echo  Creating folder: $BACKUP
mkdir $BACKUP
echo Copy corresponding dotfiles to backup folder
cp -r  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/.vim $HOME/.tmux.conf $BACKUP
echo Done!

# check if .vimtmp exist
if [ ! -d $HOME/.vimtmp ]; then
  mkdir -p $HOME/.vimtmp/_backup
  mkdir -p $HOME/.vimtmp/_swap
  mkdir -p $HOME/.vimtmp/_undo
fi

rm -rf  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/.vim $HOME/.tmux.conf
cp -r   .bash_aliases .screenrc .vimrc .vim .tmux.conf $HOME

