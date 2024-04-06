#!/bin/bash
# This script assumes that you have a folder containing images from wallhaven.cc (and no other files)
# It also logs which wallpapers you had, so you can just `cat ~/.wallhistory` to get a direct link

# Set the folder you want to pull the image from
walfol="/home/vicfic/Pictures/Wallpaper/favs"

# program
cd $walfol
pic=$(ls |sort -R |tail -1)
id=$(echo $pic | cut -d '-' -f2 | cut -d '.' -f1)
echo "${pic} https://wallhaven.cc/w/${id}" >> /home/$(whoami)/.wall_history
wallhis=$(tail -5 /home/$(whoami)/.wall_history)
echo "${wallhis}" > /home/$(whoami)/.wall_history
pic="file://${walfol}/${pic}"

# Set background. (change according to your DE/WM seteup)
gsettings set org.gnome.desktop.background picture-uri-dark $pic
