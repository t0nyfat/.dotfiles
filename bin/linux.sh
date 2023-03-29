#!/bin/bash
# if else statement to check if OS is linux
OS=$(uname)
if [ $OS = "Linux" ]
then
echo "You are in Linux"
else
echo "You are not in Linux" >> linuxsetup.log 
exit
fi
#Making .TRASH directory in home directory
mkdir ~/.TRASH
#changing .vimrc file to .bup_vimrc
mv ~/.vimrc ~/.bup_vimrc
#dumping message to linuxsetup.log
echo "The current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
#overwriting contents of etc/vimrc to a file called .vimrc in home directory
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
#Adding statement to end of .bashrc in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
