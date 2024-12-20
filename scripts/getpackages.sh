#!/bin/bash


package_manager="brew install "
packages=(
"fzf"
"neofetch"
"neovim"
"kitty"
"yabai"
"skhd"
"eza"
"bat"
"sketchybar"
)

brew update

for package in ${packages[*]}; do
  $package_manager $package
done

