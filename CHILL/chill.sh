#!/bin/bash
# My Script to generate the folder/file structure
# for a new YouTube track/video

# sets the root variable
root=$(date "+Video_%d_%m_%Y");

# creates the root folder named: Video_12_04_2023
mkdir -p $root

# first create the empty directories
mkdir -p $root/final_video
mkdir -p $root/images
mkdir -p $root/track
mkdir -p $root/videos

# next create the directoies that have files
cp -r ~/CHILL/docs $root/
cp -r ~/CHILL/graphics $root/