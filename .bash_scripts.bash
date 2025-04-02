#export PS1="\e[1;31;40m\$\e[m " 

force_color_prompt=yes

HOSTNAME_COLOR="\[\e[1;37m\]"
PROMPT_COLOR="\[\e[1;33m\]"
COLOR_RESET="\[\e[00m\]"

export PS1="${HOSTNAME_COLOR}\h${PROMPT_COLOR}\$${COLOR_RESET} "

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# set our EDITOR variable to vim
export EDITOR=vim
