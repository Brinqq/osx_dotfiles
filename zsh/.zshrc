ZINIT_HOME="$HOME/.config/zsh/zinit/zinit.git"
ZSH_THEME="$HOME/.config/zsh/.zshtheme"
EDITOR="nvim"

# Aliases
alias conf="cd $HOME/.config"
alias zshrc="$EDITOR $HOME/.config/zsh/.zshrc"
alias proj="cd $HOME/.dev/projects"
alias ls="eza"
alias cat="bat"


if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME"
fi
source $ZINIT_HOME/zinit.zsh

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
autoload -U compinit && compinit


# Histroy settings

# Basic Settings 


source $ZSH_THEME
