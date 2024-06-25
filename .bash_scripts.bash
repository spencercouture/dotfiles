#export PS1="\e[1;31;40m\$\e[m " 

force_color_prompt=yes
# export PS1="\[$(tput setaf 33)\]\u\[$(tput setaf 69)\]:\[$(tput setaf 141)\]\w \[$(tput sgr0)\]$ "
PROMPT_COLOR="\[\e[1;31;40m\]"
COLOR_RESET="\[\e[00m\]"
# export PS1="\[\e[1;31;40m\]\$\[\e[00m\] "
export PS1="${PROMPT_COLOR}\$${COLOR_RESET} "

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi
