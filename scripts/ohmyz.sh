#!/bin/bash

echo Unsetting the ZSH variable...
export ZSH=
echo Creating backup of install folder...
rm -rf ~/.oh-my-zsh.bak
mv ~/.oh-my-zsh ~/.oh-my-zsh.bak
echo Installing zsh...
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
