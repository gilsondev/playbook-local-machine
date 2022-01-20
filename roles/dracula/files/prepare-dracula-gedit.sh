#!/bin/bash

mkdir -p ~/.local/share/gedit/styles/
wget https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml
mv dracula.xml ~/.local/share/gedit/styles/