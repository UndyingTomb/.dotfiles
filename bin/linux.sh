shebang '#!/bin/bash'
# This script checks the operating system type and performs the setup for Linux.
# If the operating system is not Linux, the script logs an error and exits.
# The script creates the '.TRASH' directory in the home directory, renames the '.vimrc' file to '.bup vimrc'
# if it exists, overwrites the contents of the 'etc/vimrc' file to a file called '.vimrc' in the home directory,
# and adds the statement 'source ∼/.dotfiles/etc/bashrc custom' to the end of the .bashrc file located in the home directory.
# Check if the operating system is Linux.
if [ "$(uname)" != "Linux" ]; then
   echo "Error: This script is only for Linux." >> linuxsetup.log
   exit 1
fi
# Make the '.TRASH' directory in the home directory if it doesn't exist.
if [ ! -d "$HOME/.TRASH" ]; then
   mkdir "$HOME/.TRASH"
fi
# If the '.vimrc' file exists, rename it to '.bup_vimrc'.
if [ -f "$HOME/.vimrc" ]; then
   mv "$HOME/.vimrc" "$HOME/.bup_vimrc"
   echo "The current .vimrc file was changed to '.bup_vimrc'." >> linuxsetup.log
fi
# Overwrite the contents of the etc/vimrc file to a file called '.vimrc' in the home directory.
cp "/etc/vimrc" "$HOME/.vimrc"
# Add the statement 'source ∼/.dotfiles/etc/bashrc custom' to the end of the .bashrc file.
echo "source ∼/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
