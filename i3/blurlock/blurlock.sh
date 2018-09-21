#!/bin/bash

ICON=~/.config/i3/blurlock/mint_icon.png
ICON_R=~/.config/i3/blurlock/mint_icon_resized.png
IMAGE=~/.config/i3/blurlock/blurredImg.png


#Get the screenshot, add the blur and lock the screen with it
scrot $IMAGE

#set the brightness and contrast
convert -brightness-contrast -30x-50 $IMAGE $IMAGE

#Add Gausian blur and re-scale image
convert -filter Gaussian -resize 25% -resize 400% $IMAGE $IMAGE

#resize the logo
convert -resize 35% $ICON $ICON_R

#append the icon
composite -gravity center $ICON_R $IMAGE $IMAGE

#lock
i3lock -i $IMAGE

#remove files again
rm $IMAGE
