#!/bin/bash

# This script requires a lldbinfo file inside of a directory called {debug}, path must be relative to calling working directory
# Layout for lldbinfo file is as follows
#   [key]: [value]
#   required keys to be configured: 
#     [executable] - path to exe relative to projects root directory
#   opt keys:
#     [env] - important env variables

#TODO: add error info for parsing lldb file

root_dir=$1
file="$root_dir/debug/lldbinfo"
executable_path=
env_var=
settings=

if [ ! -e "$root_dir/debug/lldbinfo" ]; then
  echo "lldb info file not found!"
  echo "lldb script requires a lldbinfo file in \$root_directory/debug/"
  echo "Paths search $root_dir/debug/"
  exit
fi

while IFS=": " read -r key value; do
  if [ "$key" = "executable" ]; then
    executable_path=$value
    continue;
  fi
  if [ "$key" = "env" ]; then
    env_var+="$value "
    continue;
  fi
  if [ "$key" = "setting" ]; then
    settings+="$value "
  fi
done < $file

tmux split-window -h "lldb $root_dir/$executable_path; exit"
for i in ${env_var[*]}; do
  tmux send-keys "settings set target.env-vars $i" c-m
done

for ((i=0; i<${#settings[@]}; i+=2)); do
  tmux send-keys "settings set ${settings[i]} ${settings[i+1]}" c-m
done
tmux send-keys c-l
