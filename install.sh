#!/bin/bash

# Function to print a sentence with a border of '#' symbols
print_bordered_message() {
    local message=$1
    local length=${#message}
    local border=$(printf '#%.0s' $(seq 1 $((length + 8))))

    echo "$border"
    echo "###  $message  ###"
    echo "$border"
}

# Example usage
print_bordered_message "Tmux: run prefix+I for active tmux plugin. 
Vim: type :+PlugInstall for active vim plugin."


# tmux config setup
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf $(echo $HOME)
tmux source $(echo $HOME)/.tmux.conf


# vim config setup
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tomasiser/vim-code-dark $(echo $HOME)/.vim/pack/themes/start/vim-code-dark
cp vimrc $(echo $HOME)/.vim/
vi $(echo $HOME)/.vim/vimrc


