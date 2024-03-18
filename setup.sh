#! /bin/zsh

DOTFILES=(.gitignore .hushlogin .zprofile .zshrc .p10k.zsh)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/Developer/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done