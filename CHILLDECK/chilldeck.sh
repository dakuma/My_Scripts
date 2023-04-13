#!/bin/bash

#=========================#
### My ChillDeck script ###
#=========================#

vid=$(date "+vid_%d_%m_%Y")

# Creates the root directory
mkdir -p $video

# Creates the sub directories
mkdir -p $vid/final_video
mkdir -p $vid/images
mkdir -p $vid/track
mkdir -p $vid/video

# Create the text docs directory and files
cp -r ~/CHILLDECK/docs $vid/
cp -r ~/CHILLDECK/graphics $vid/