# Change the window title of X terminals
#case $TERM in
#xterm*|rxvt|eterm)
#  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
#;;
#screen)
#  PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
#;;
#esac
source ~/.bash_profile
