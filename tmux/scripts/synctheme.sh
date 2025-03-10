#!/bin/bash


file=$XDG_CONFIG_HOME/kitty/

color_off='#8897F4'
color_on="#B52A5B"
color_bg="#191724"



tmux set -g window-status-current-format "#[bold]#[fg=$color_on]#I#[fg=default]#[default]"
tmux set -g window-status-format "#[bold]#[fg=$color_off]X#[fg=white]#[default]"
tmux set -g status on
tmux set -g status-bg "$color_bg"
tmux set -g status-fg "white"
tmux set -g status-left-length 100
tmux set -g status-right-length 100
tmux set -g status-right "#[bold] ⚡#[fg=$color_off]- #[fg=$color_on]#(tmux display-message -p '#{pane_current_command}') #[fg=$color_off]|#[fg=default] #[bg=$color_off]  TMUX  #[bg=default]#[default]"
tmux set -g status-left "#[bold] 🖥️#[fg=$color_off] -#[fg=$color_on] #S #[fg=default]#[fg=$color_off]| #[fg=default]#[default] "



#@param hexcolor
function darken_bg(){
  return;
}
