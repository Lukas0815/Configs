#!/bin/bash

IMAGE1 = ~/config/i3/blurlock/i3lock1.png


#Get the screenshot, add the blur and lock the screen with it
scrot $IMAGE1

#set the brightness and contrast
convert -brightness-contrast -30x-50 $IMAGE1 $IMAGE1

#Add Gausian blur and re-scale image
convert -filter Gausian -resize 25% -resize 400% $IMAGE1 $IMAGE1

#lock
i3lock -i $IMAGE1

#remove files again
re $IMAGE1
