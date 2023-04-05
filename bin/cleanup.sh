 #!/bin/bash
# This script removes the changes made by the 'linux.sh' script.
# The script removes the '.vimrc' file in the home directory,
# removes the line 'source ∼/.dotfiles/bashrc custom' in the .bashrc file in the home directory,
# and removes the '.TRASH' directory inside of the home directory.

# Remove the '.vimrc' file in the home directory.
rm -f ~/.vimrc

# Remove the line 'source ∼/.dotfiles/bashrc custom' in the .bashrc file in the home directory.
# sed -i 's///g' ~/.bashrc
sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc
#sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"

# Remove the '.TRASH' directory inside of the home directory.
rm -rf ~/.TRASH
