# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tomas/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt spaceship
