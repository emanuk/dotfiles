#!/bin/bash
# copy_to_dofiles.sh

# Very dangerous script for my own use
# It will copy the corresponding dotfiles files in $HOME in the dotfiles directory
# The script assume that dotfiles is at the root of your $HOME

# backup the corresponding dotfiles files in $HOME
BACKUP=$HOME/backup_dotfiles_git.`date +%F`.`date +%s`
DOTFILES=$HOME/dotfiles
echo  Creating folder: $BACKUP
mkdir $BACKUP
echo Copy corresponding dotfiles to backup folder
cp -r  $HOME/dotfiles $BACKUP
echo Done!

# remove compressed .vim directory in vim.tgz and create a new tar archive
if [ -d $HOME/vim.tgz ]; then
  rm -rf $HOME/vim.tgz
fi
tar czf $HOME/vim.tgz .vim

# remove dotfiles files in the project dotfiles
# copy dotfiles in $HOME to the dotfiles directory
rm -rf $DOTFILES/.bash_aliases $DOTFILES/.screenrc $DOTFILES/.vimrc $DOTFILES/vim.tgz
cp -r  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/vim.tgz $DOTFILES
rm -rf $HOME/vim.tgz
#  find .vim -name .git -print0|xargs -0 rm -rf
#
# git commit -a -m 'maj auto'
# git push origin master
