
###--------------------------------
###----> RyzCode
###
### Alias setup
### Environmental variable setup
### etc.
###
### Since Jan 1, 2014
###
###--------------------------------


###----> Aliases
alias l='ls -lFG'
alias ll='ls -lFG'
alias la='ls -laFG'
alias vi='vim'
alias c='clear'
alias grep='egrep --color=auto'
alias rmf='rm -rf'
alias emacs='/usr/local/Cellar/emacs/24.3/bin/emacs'


###----> Env Vars
export PAGER=less
export LESS=-RNMi
export GREP_OPTIONS='--color=always'
export GREP_COLOR='0;32' # set to green


###----> Colors
DarkBlack='\[\e[00;30m\]'; LightBlack='\[\e[01;30m\]'
DarkRed='\[\e[00;31m\]'; LightRed='\[\e[01;31m\]'
DarkGreen='\[\e[00;32m\]'; LightGreen='\[\e[01;32m\]'
DarkYellow='\[\e[00;33m\]'; LightYellow='\[\e[01;33m\]'
DarkBlue='\[\e[00;34m\]'; LightBlue='\[\e[01;34m\]'
DarkPurple='\[\e[00;35m\]'; LightPurple='\[\e[01;35m\]'
DarkCyan='\[\e[00;36m\]'; LightCyan='\[\e[01;36m\]'
DarkWhite='\[\e[00;37m\]'; LightWhite='\[\e[01;37m\]'
ColorReset='\[\e[0m\]'


###----> PS1 Setup
#\u --> User name
#\h --> Host name
#\t --> Time stamp
#\w --> Working directory, with ~
export PS1='\u'$DarkCyan'@'$ColorReset'(\t) \w '$LightRed'`r=$?;test $r -ne 0 && echo "ret:$r"`'$ColorReset'> '
