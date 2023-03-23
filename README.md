# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.

This Git repository contains scripts for setting up and cleaning up a Linux environment. The scripts are located in the './bin' directory and are named 'linux.sh' and 'cleanup.sh', respectively. The Makefile in the root directory has two targets: 'linux' and 'clean'. The 'linux' target runs the 'linux.sh' script and the 'clean' target runs the 'cleanup.sh' script. The 'clean' target is a dependency of the 'linux' target to ensure that any changes made by the 'linux.sh' script are reverted before running the script again.
