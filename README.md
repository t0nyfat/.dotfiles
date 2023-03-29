# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.\
Inside my repository are there are 3 directories and 4 files.\
\
The four files in .dotfiles directory include:\
1).gitignore file that tells Git to ignore certain files and directories\
2)this README.md file with instructions and directions\
3).vimrc file with my custom configuration\
4)Makefile that can run both vimrc and bashrc\_custom scripts at the same time\
\
The three directories include:\
1).git directory with essential files for git to function\
2).etc directory where i can edit my vimrc and bashrc\_custom files. Inside my .etc directory i have,\
2a)my vimrc file just sets different configs for the terminal such as autoindent, ruler, or the color\
2b)my bashrc file defines different aliases and functions to make my life easier such as a trash alias to move files to the .TRASH directory or a function to tar a directory.\
3).bin directory where I have scripts to run the vimrc and bashrc\_custom files, Inside my .bin directory i have,\
3a)linux.sh that checks if the user OS is linux. If not, the script sends a message to a setup log and exits the terminal. Next it creates a .TRASH directory in the home directory. It then changes the current .vimrc filei in the home directory to .bup\_vimrc while sending a message to the setup log confirming this. Next it takes the contents of the ~/.dotfiles/etc/vimrc and overwrites .vimrc in home directory. Finally it goes to the .bashrc file in home directory and adds "source ~/.dotfiles/etc/bashrc\_custom to the end.\
3b)cleanup.sh script that is meant to undo everything done in the linux.sh script. First it removes the .vimrc file from home directory. Then it removes "source ~/.dotfiles/etc/bashrc\_custom" from the .bashrc file in home directory. Finally it removes the .TRASH directory in home directory.\
