
# ================ General Config ====================

# Bash Turn Colors On
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ================ Ruby Config ====================

# We're going to use rbenv to install and manage our Ruby versions.
#brew install rbenv ruby-build
# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ================ Golang Config ====================

GOPATH=~/.go/bin:$GOPATH

# ================ Python 3 Config ====================

# Load Brewed Python3 to path, if it exists
#   /usr/local/opt/python/libexec/bin
export PATH="/Users/c17n/Library/Python/3.7/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# ================ AWS Config ====================

# AWS Note
#   To install AWS CLI tool
#     aws --version
#   To upgrade to the latest AWS CLI Tool
#     pip3 install awscli --upgrade --user
complete -C '/Users/c17n/Library/Python/3.7/bin/aws_completer' aws         
# AWS Environment Variables
#   export AWS_ACCOUNT_ID=""     ## e.g. 123456789012
#   export AWS_DEFAULT_REGION="" ## e.g. us-east-1
export AWS_ACCOUNT_ID="$(aws sts get-caller-identity --output=text --query='Account')"
export AWS_DEFAULT_REGION="$(aws configure get region --output=text)"

# ================ BASH Session folder ====================

# NOT WORKING... <not sure why, no time to dig now>.
#SHELL_SESSION_DIR="$BASH_IT/._/.bash_sessions" 

# ================ BASH Aliases ====================

alias show_calendar='cal'
alias show_software_version='sw_vers'

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

# ncurses is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
#If you need to have ncurses first in your PATH run:
#  echo 'export PATH="/usr/local/opt/ncurses/bin:$PATH"' >> ~/.bash_profile
#For compilers to find ncurses you may need to set:
#  export LDFLAGS="-L/usr/local/opt/ncurses/lib"
#  export CPPFLAGS="-I/usr/local/opt/ncurses/include"
#For pkg-config to find ncurses you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# ================ BASH Set Default Editor ====================

# Just to set default editor while inside tmux
export EDITOR='vim'

# ================ Tmux Config ====================

#==> tmux
#Example configuration has been installed to:
#  /usr/local/opt/tmux/share/tmux
#   tmux -u new-session \; split-window -h \; split-window -v \; select-pane -t 0 \; send-keys ' ' C-m \;
#Bash completion has been installed to:
#  /usr/local/etc/bash_completion.d
