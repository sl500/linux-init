#!/bin/bash

remote=${1}@${2}

#scp ./bash_aliases ${1}@${2}:~/.bash_aliases;
scp ./bash_aliases ${remote}:~/.bash_aliases;
scp ./start.html ${remote}:~/start.html;
#ssh ${1}@${2} '. ~/.bashrc';
ssh ${remote} '. ~/.bashrc';
