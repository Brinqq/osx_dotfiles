#!/bin/bash

# TODO: find a way to get or take in a configurable path. for now its hard coded

profile_path="/Users/brinq/Library/Application Support/Firefox/Profiles/60u3f5hq.default-release-1"
theme_folder="themes"
theme=$1

if [ ! -d "$profile_path" ]; then
  echo "Error: invalid firefox profile path"
  exit
fi

if [ ${#theme} == 0 ]; then
    echo "Error: no theme passed"
    echo "Script requires a theme in the theme folde to be passed in at arg 1"
    exit
fi

if [ ! -d $theme_folder/$theme ]; then 
  echo "Error: %theme them not found"
  exit
fi


echo "exporting THEME:$1 to profile at PATH:$profile_path"

rm -fr "$profile_path/chrome"
cp -rf $theme_folder/$theme/chrome "$profile_path"


