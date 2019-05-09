#!/bin/bash
##cp -r ./files2copy/* ~/*
cp ~/.vimrc ~/.vimrc.bak;
cp ./files2copy/.vimrc ~/.vimrc;
cp ~/.bash_aliases ~/.bash_aliases.bak;
cp ./files2copy/.bash_aliases ~/.bash_aliases;
. ~/.bashrc;
