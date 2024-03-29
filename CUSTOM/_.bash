
# ================ General Config ====================

# Bash Turn Colors On
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HOSTNAME=chriswinn
# Turn off Bash Session Recording
#SHELL_SESSION_HISTORY=0

# ================ Ruby Config ====================

# We're going to use rbenv to install and manage our Ruby versions.
#brew install rbenv ruby-build
# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ================ Golang Config ====================

#GOPATH=~/.go/bin:$GOPATH

# ================ Python 3 Config ====================

# Load Brewed Python3 to path, if it exists
#   /usr/local/opt/python/libexec/bin
export PATH="/Users/c17n/Library/Python/3.7/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# VENV_Wrapper Config
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#export PROJECT_HOME=$HOME/Devel
#source /usr/local/bin/virtualenvwrapper.sh
# deactivate                       # Exit out of the current Python virtual environment
# workon                           # List available virtual environments
# workon name_of_environment       # Activate the specified Python virtual environment
# rmvirtualenv name_of_environment # Remove the specified environment

# ================ Ionic Config ====================

# export IONIC_PERSISTOR_PASSWORD for - Personal "Gmail" Acct.
export IONIC_PERSISTOR_PASSWORD=mysecret

# ================ Django Notes ====================

# Django Config
#   To create a new virtual environment run:
#   Example... run
#     mkvirtualenv my_django_environment      # create virtualenv 
#     workon my_django_environment            # start using that virtualenv
#     pip3 install django                     # install django inside that virtualenv
#     python3 -m django --version             # validate django is installed
#     mkdir django_test                       # wherever you want the django project to live
#     cd django_test                          # move into the directory
#     django-admin startproject mytestsite    # create a new skeleton site called "mytestsite" using the django-admin tool
#     cd mytestsite                           # move into the directory     
#     python3 manage.py runserver             # run the development web server from within this folder using manage.py and the runserver

# ================ AWS Config ====================

# AWS Note
#   To install AWS CLI tool
#     aws --version
#   To upgrade to the latest AWS CLI Tool
#     pip3 install awscli --upgrade --user
#complete -C '/Users/c17n/Library/Python/3.7/bin/aws_completer' aws         
# AWS Environment Variables
#   export AWS_ACCOUNT_ID=""     ## e.g. 123456789012
#   export AWS_DEFAULT_REGION="" ## e.g. us-east-1
#export AWS_ACCOUNT_ID="$(aws sts get-caller-identity --output=text --query='Account')"
#export AWS_DEFAULT_REGION="$(aws configure get region --output=text)"

# ================ BASH Session folder ====================

# NOT WORKING... <not sure why, no time to dig now>.
#SHELL_SESSION_DIR="$BASH_IT/._/.bash_sessions" 

# ================ BASH Homebrew completion Config ====================

# Just to enable completion for packages installed by Homebrew
HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# ================ NCURSES Config ====================

#  ncurses is keg-only, which means it was not symlinked into /usr/local,
#  because macOS already provides this software and installing another version in
#  parallel can cause all kinds of trouble.
#
#  If you need to have ncurses first in your PATH run:
#    echo 'export PATH="/usr/local/opt/ncurses/bin:$PATH"' >> ~/.bash_profile
#  For compilers to find ncurses you may need to set:
#    export LDFLAGS="-L/usr/local/opt/ncurses/lib"
#    export CPPFLAGS="-I/usr/local/opt/ncurses/include"
#  For pkg-config to find ncurses you may need to set:
#    export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# ================ Tmux Config ====================

#  Example configuration has been installed to:
#    /usr/local/opt/tmux/share/tmux
#
#  Set Xterm/screen/Tmux title with only a short hostname.
#    Uncomment this (or set SHORT_HOSTNAME to something else),
#    Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)
#
#  Set Xterm/screen/Tmux title with only a short username.
#    Uncomment this (or set SHORT_USER to something else),
#    Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}
#
#  Set Xterm/screen/Tmux title with shortened command and directory.
#    Uncomment this to set.
#export SHORT_TERM_LINE=true
#
# Just to set default editor while inside tmux
export EDITOR='vim'

alias tmux-sane="tmux -u new-session \; split-window -h -p 70 \; split-window -v -p 65 \; select-pane -t 0 \; send-keys 'vim $PWD/.' C-m \;"
#  alias tmux-dev="tmux -u new-session \; split-window -h -p 70 \; send-keys 'brew list && pip list' C-m \; split-window -v -p 65 \; send-keys 'vim $PWD/.' C-m \; select-pane -t 1 \; send-keys 'vim $PWD/.' C-m \;"
alias tmux-dev="tmux -u new-session \; split-window -h -p 70 \; send-keys 'pip list' C-m \; split-window -v -p 65 \; send-keys 'brew list' C-m \; select-pane -t 1 \; send-keys 'vim $PWD/.' C-m \;"

# ================ BASH Aliases ====================

alias show_calendar='cal'
alias show_software_version='sw_vers'
alias docker-login="docker-machine ssh default"
