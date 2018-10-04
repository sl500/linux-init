# v0.1.1 20180904
## Colorize the ls output ##
alias ls='ls --color=auto'

#...  , the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
#alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
#alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias zshrc='${=EDITOR} ~/.zshrc' # Quick access to the ~/.zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

alias t='tail -f'

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

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='sudo find . -type d -iname'
alias ff='sudo find . -type f -iname'

alias h='history'
alias hg='history | grep'
alias hl='history | less'

alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

alias rmdi='rmdir -v'
alias rmd='rmdir -v'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


#MBH
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias d='cd'
#alias ~='cd ~'
alias md='mkdir -pv'
mdcFunction(){
	md $1
	cd $1
}
alias mdc='mdcFunction'
#alias -='cd -'
alias d-='cd -'
alias l.='ls -d .* --color=auto'
alias n='. n'
alias pip='pip3'
alias mbhdate='date +" "%F" "%a" "%H:%M:%S" "KW:%V" "'
alias aliases='cat ~/.bash_aliases'
alias showalias='cat ~/.bash_aliases'
alias showaliases='cat ~/.bash_aliases'
alias listalias='cat ~/.bash_aliases'
alias listaliases='cat ~/.bash_aliases'
alias aliases='cat ~/.bash_aliases'
alias editalias='vi ~/.bash_aliases'
alias editaliases='vi ~/.bash_aliases'
alias ea='vi ~/.bash_aliases'
alias build2='ssh kvm-sbuild2'
alias build1='ssh kvm-sbuild'
alias dagda='ssh dagda'
alias thanos='ssh thanos'
alias rested='ssh rested'
alias refreshalias='source ~/.bashrc'
alias refreshaliases='refreshalias'
alias ra='refreshalias'
alias drax='ssh drax'
alias gitup='git status; git add *; git status; git commit -m "minor change with alias"; git push; '
vishFunction(){
	touch $1
	chmod +x $1
        vi $1
}
alias vish='vishFunction'

## Use a long listing format ##
alias ll='ls -laFh'


