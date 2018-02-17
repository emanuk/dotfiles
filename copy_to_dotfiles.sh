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

# todo update all projects in the .vim folder


# remove dotfiles files in the project dotfiles
# copy dotfiles in $HOME to the dotfiles directory
rm -rf $DOTFILES/.bash_aliases $DOTFILES/.screenrc $DOTFILES/.vimrc $DOTFILES/.vim $DOTFILES/.tmux.conf
cp -r  $HOME/.bash_aliases $HOME/.screenrc $HOME/.vimrc $HOME/.vim  $HOME/.tmux.conf $DOTFILES
# don't need here the git projects
find .vim -name .git -print0|xargs -0 rm -rf

echo "git add, commit & git push"

git add .
git commit -a -m 'maj copy_to_dotfiles'
git push origin master

