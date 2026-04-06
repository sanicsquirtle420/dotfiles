#location: $HOME/.bashrc or ~/.bashrc

export HISTCONTROL=ignoredups

DEFAULT="\[\e[0;39m\]"
function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }

# Colors
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'

function git_branch() {
	git symbolic-ref --short HEAD 2>/dev/null | awk '{print "("$0")"}'
}

function bash_prompt() {
    if git rev-parse --show-toplevel >/dev/null 2>&1 ; then
	   PS1="${cyn}\$(git_branch) ${pur}\W${wht} \$ ${clr}"
    else
        local pwdmaxlen=30
        local trunc=".."
        local dir=${PWD##*/}
        pwdmaxlen=$(((pwdmaxlen < ${#dir}) ? ${#dir} : pwdmaxlen))
        local NEW_PWD=${PWD/#$HOME/\~}
        local pwdoffset=$((${#NEW_PWD} - pwdmaxlen))
            if [ ${pwdoffset} -gt 0 ] ; then
                NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
                NEW_PWD=${trunc}/${NEW_PWD#*/}
            fi 
            PS1="${cyn}\u ${wht}@ ${pur}\h ${wht}[${NEW_PWD}] \$ ${clr}"
    fi
}

# ^D won't logout...
set -o ignoreeof

# Report the status of terminated background jobs
# immediately, rather than before the next primary prompt.
set -o notify

# Don't overwrite files when using >
set -o noclobber

#Colorized LS
CLICOLOR=1
#export LSCOLORS=dxfxcxdxbxegedabagacad

alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'

set -o vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Initializes the prompt
PROMPT_COMMAND=bash_prompt