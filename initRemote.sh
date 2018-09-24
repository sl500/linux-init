#!/bin/bash

remote=${1}@${2}

#scp ./bash_aliases ${1}@${2}:~/.bash_aliases;

scp ./files2copy/* ${remote}:~/;
#scp ./files2copy/.bash_aliases ${remote}:~/;
#scp ./files2copy/start.html ${remote}:~/;

#ssh ${1}@${2} '. ~/.bashrc';
ssh ${remote} '. ~/.bashrc';
