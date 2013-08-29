stty -ixon -ixoff

# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to laod
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="agnoster"

plugins=(git vi-mode vundle)

source $ZSH/oh-my-zsh.sh

# remove username@host from the theme
prompt_context() {
}

# enable vi bindings
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

export PATH="/opt/mono/bin:$PATH"
export LD_LIBRARY_PATH="/opt/mono/lib:$LD_LIBRARY_PATH"
