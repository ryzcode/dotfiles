#!/bin/bash
## Written by RyzCode
## On Feb 2, 2014
##
## Easy setup tool for all dotfiles installed
##


__error=''
__error_code=0

###----> Create symlinks to all dotfiles defined here under home directory
echo "Creating symlinks to git installed dotfiles..."
find $PWD ! \( \
    -name .git -o \
    -name README.md -o \
    -name setup.sh -o \
    -name .DS_Store \) \
    -maxdepth 1 -mindepth 1 \
    -exec ln -s {} ~/ \; 2> /tmp/dotfiles_setup.log

__error=$(</tmp/dotfiles_setup.log)
if [ ! -z "$__error" ]; then
    __error_code=1
    echo "Error: there was some error occurred while creating symlinks..."
    cat /tmp/dotfiles_setup.log
    echo ""
else
    echo "Operation completed!"
    echo ""
fi
rm -f /tmp/dotfiles_setup.log

exit $__error_code

## End of setup.sh
