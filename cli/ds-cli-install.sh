#!/bin/bash

mkdir -p ~/.config/htop/
cp ~/.config/htop/htoprc ~/.config/htop/htoprc.`date +%s`
cp /opt/homebrew/share/dsenv-cli-htoprc ~/.config/htop/htoprc

mkdir -p ~/.config/mc/
cp ~/.config/mc/ini ~/.config/mc/ini.`date +%s`
cp /opt/homebrew/share/dsenv-cli-mc.ini ~/.config/mc/ini

cp ~/.gitignore_global ~/.gitignore_global.`date +%s`
cp /opt/homebrew/share/dsenv-cli-gitignore_global ~/.gitignore_global
