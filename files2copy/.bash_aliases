# v0.2.0 20181130

# CMD ls
alias ls='ls --color=auto'
alias ll='ls -l'      #long list
alias llh='ls -lh'      #long list
alias la='ls -la'      #long list all
alias lah='ls -lah'      #long list all
alias lag='ls -lah | grep '      #long list all
#alias l.='ls -d .*' 
#...  , the common ones I use a lot shortened for rapid fire usage
#alias l='ls -lFh'     #size,show type,human readable
#alias la='ls -lAFh'   #long list,show almost all,show type,human readable
#alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
#alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
#alias ldot='ls -ld .*'
#alias lS='ls -1FSsh'
#alias lart='ls -1Fcart'
#alias lrt='ls -1Fcrt'
## Use a long listing format ##
#alias ll='ls -laFh'

# CMD cd - navigation
alias d='cd'
alias d-='cd -'
alias d~='cd ~'
alias cd..='cd ..'
alias cd.='cd ..'
alias ..='cd ..'
alias ..1='cd ..'
alias ...='cd ../..'
alias ..2='cd ../..'
alias ....='cd ../../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias ..6='cd ../../../../../..'

# CMD file folder manipulation
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias rmf='rm -f'
alias rmrf='rm -rf'
alias rmd='rmdir -v'
alias mkd='mkdir'
alias mkdp='mkdir -pv'
alias md='mkdir -pv'

# CMD grep
alias grep='grep --color'
alias grepm='grep -rIPni '
alias gm='grepm '
#alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

# CMD history 
alias h='history'
alias hg='history | grep'
alias hl='history | less'

# CMD find
alias fd='sudo find . -type d -name'
alias ff='sudo find . -type f -name'
alias fdi='sudo find . -type d -iname'
alias ffi='sudo find . -type f -iname'
alias fdr='sudo find / -type d -name'
alias ffr='sudo find / -type f -name'
alias fdir='sudo find / -type d -iname'
alias ffir='sudo find / -type f -iname'

# CMD du disk usage
alias dud='du -d 1 -h'
alias duf='du -sh *'

# CMD misc
alias t='tail -f'
#alias zshrc='${=EDITOR} ~/.zshrc' # Quick access to the ~/.zshrc file
#alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

# Command line head / tail shortcuts
#alias H='| head'
#alias T='| tail'
#alias G='| grep'
#alias L="| less"
#alias M="| most"
#alias LL="2>&1 | less"
#alias CA="2>&1 | cat -A"
#alias NE="2> /dev/null"
#alias NUL="> /dev/null 2>&1"
#alias P="2>&1| pygmentize -l pytb"

#MBH
makeDirAndGoIn(){
	mkdir -pv $1
	cd $1
}
alias mdc='makeDirAndGoIn'
alias n='. n'
alias pip='pip3'
alias mbhdate='date +" "%F" "%a" "%H:%M:%S" "KW:%V" "'
makeBashScriptFileReadyToGo(){
	touch $1
	chmod +x $1
	echo "#!/bin/bash" >> $1
	echo "# $1 " >> $1
	date +"# "%F" "%a" "%H:%M:%S" "KW:%V" " >> $1
	echo "# MBH # " >> $1
	echo "# Description: # " >> $1
	echo "#  " >> $1
	echo "# Version:  # " >> $1
	echo "#  " >> $1

        vi $1
}
alias vish='makeBashScriptFileReadyToGo'


## SSH verbindungen
#Home
#####################################

## Work on Aliases
# list aliases
alias listaliases='cat ~/.bash_aliases'
alias aliases='listaliases'
alias showalias='listaliases'
alias showaliases='listaliases'
alias listalias='listaliases'
alias lista='listaliases'
alias showa='listaliases'
alias sag='listaliases | grep '
# edit alises
alias editaliases='vi ~/.bash_aliases'
alias editalias='editaliases'
alias ea='editaliases'
# refresh bashrc -> auch aliases
alias refreshaliases='source ~/.bashrc'
alias refreshalias='refreshaliases'
alias ra='refreshalias'

## GIT
alias gcl='git clone '
alias gst='git status '
alias gad='git add * '
alias gadf='git add '
alias gco='git commit -m '
alias gpu='git push '
alias gta='git tag '
alias gput='git push --tag '
alias glo='git log '
alias gloa='git log -p '
alias gpul='git pull '
alias gcou='git checkout '
alias gdi='git diff '
alias gitup='git status; git add *; git status; git commit -m "minor change with alias"; git push; '
alias gdiStaged2NotStaged='git diff '
alias gdiHead2Staged='git diff --staged '
alias gdiHead2NotStagedIncludingStaged='git diff HEAD '


#######  LIMUX specific #########

## SSH work
#alias sbuild2='ssh kvm-sbuild2'
alias sbuild1='ssh kvm-sbuild'
alias dnsmaster='ssh dnsmaster'
alias dagda='ssh dagda'
alias thanos='ssh thanos'
alias rested='ssh rested'
alias mobilia='ssh mbh_wollmux@mobilia'
alias drax='ssh marcus.bonhagen@drax'
alias draxi='ssh marcus.bonhagen@draxi'

## SCP 
#aliases
#alias scpAlias2sbuild='scp /home/marcus.bonhagen/.bash_aliases marcus.bonhagen@kvm-sbuild2:~/.bash_aliases; scp /home/marcus.bonhagen/.bash_aliases marcus.bonhagen@kvm-sbuild:~/.bash_aliases; cp ~/.bash_aliases ~/_D/git/linux-init/files2copy/;'
alias scpAlias2sbuild='scp /home/marcus.bonhagen/.bash_aliases marcus.bonhagen@kvm-sbuild:~/.bash_aliases; cp ~/.bash_aliases ~/_D/git/linux-init/files2copy/;'
#vimrc
#alias scpVimrc2sbuild='scp /home/marcus.bonhagen/.vimrc marcus.bonhagen@kvm-sbuild2:~/.vimrc; scp /home/marcus.bonhagen/.vimrc marcus.bonhagen@kvm-sbuild:~/.vimrc; cp ~/.vimrc ~/_D/git/linux-init/files2copy/;'
alias scpVimrc2sbuild='scp /home/marcus.bonhagen/.vimrc marcus.bonhagen@kvm-sbuild:~/.vimrc; cp ~/.vimrc ~/_D/git/linux-init/files2copy/;'

##mr clone all cgits
alias mr-lhm-update='/home/marcus.bonhagen/_D/cgit/dev-tools/git/mr-lhm-update '

##quilt
alias qpu='quilt push -a'
alias qpo='quilt pop -a'
alias qre='quilt refresh'
alias qad='quilt add '
alias qnu='quilt new '

##userrepo
alias mrepolist='lhm-reprepro list /srv/user-repos/repo-mbh walhalla'
alias mreporm='lhm-reprepro removesrc /srv/user-repos/repo-mbh walhalla '
alias mrepoad='lhm-reprepro include /srv/user-repos/repo-mbh walhalla '
alias mrepoaddeb='lhm-reprepro includedeb /srv/user-repos/repo-mbh walhalla '

