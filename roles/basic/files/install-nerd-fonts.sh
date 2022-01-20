#!/bin/bash

if [ -d "/usr/share/fonts/jetbrains-nerd" ] && [ -d "/usr/share/fonts/blex" ] && [ -d "/usr/share/fonts/cascadia" ]
then
    echo "NERD Fonts installed" 
else
    # JetBrains
    mkdir $HOME/jetbrains-nerd && cd $HOME/jetbrains-nerd
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
    unzip JetBrainsMono.zip
    rm -rf JetBrainsMono.zip
    sudo mv $HOME/jetbrains-nerd /usr/share/fonts/

    # IBM Plex
    mkdir $HOME/blex && cd $HOME/blex
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/IBMPlexMono.zip
    unzip IBMPlexMono.zip
    rm -rf IBMPlexMono.zip
    sudo mv $HOME/blex /usr/share/fonts/

    # Cascadia
    mkdir $HOME/cascadia && cd $HOME/cascadia
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
    unzip CascadiaCode.zip
    rm -rf CascadiaCode.zip
    sudo mv $HOME/cascadia /usr/share/fonts/

    # Update all fonts
    sudo fc-cache -fvr && fc-cache -fvr
fi
