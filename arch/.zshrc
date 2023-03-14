# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

##### ALIAS #####
alias "ls"="exa --icons"
alias "l"="ls -la"
alias 'cat'='bat'
alias 'ips'='ip -c -br a'
alias 'ports'='sudo netstat -tulanp'
alias 'please'='sudo'

alias 'push'='git push'
alias 'commit'='git commit -m'
alias 'pull'='git pull'
alias 'add'='git add'
alias 'add'='git add'
alias 'merge'='git merge'
alias 'status'='git status'
alias 'checkout'='git checkout'


##### CONFIGS REACT NATIVE #####
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:~/android-studio/bin

unsetopt nomatch

##### NVM #####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##### ASDF #####
. /opt/asdf-vm/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh
