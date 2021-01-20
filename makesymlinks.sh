#!/bin/bash
############################
# .makesymlinks.sh
# This script creates symlinks from the home directory to 
# any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles/old             # old dotfiles backup directory
files="bashrc irssi tmux.conf vimrc vim i3"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backups ..."
mkdir -p $olddir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving ~/.$file from ~ to $olddir"
    mv ~/.$file $olddir/.$file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
