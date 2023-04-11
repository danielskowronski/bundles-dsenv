#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/.oh-my-zsh; git pull; cd -

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

cp ~/.zshrc ~/.zshrc.`date +%s`
cp /opt/homebrew/share/dsenv-zsh-zshrc ~/.zshrc

cp ~/.p10k.zsh ~/.p10k.zsh.`date +%s`
cp /opt/homebrew/share/dsenv-zsh-p10k ~/.p10k.zsh