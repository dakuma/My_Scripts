#!/bin/bash
# simple folder/file creation script sample

# creates the root_dir variable
root_dir="$1" # ninja Company_Name

# Create the root folder
mkdir -p $root_dir

# Create subfolders for css, assets(with images)
# & scripts
mkdir -p $root_dir/css 
mkdir -p $root_dir/assets 
mkdir -p $root_dir/assets/thumbs 
mkdir -p $root_dir/assets/fonts 
mkdir -p $root_dir/assets/sounds 
mkdir -p $root_dir/js


#########################################
# Create our app.css file before the 
# index.html file is created!
touch $root_dir/css/app.css

echo "* {" >> $root_dir/css/app.css
echo "  margin: 0;" >> $root_dir/css/app.css
echo "  padding: 0" >> $root_dir/css/app.css
echo "  box-sizing: border-box;" >> $root_dir/css/app.css
echo "  scroll-behavior: smooth;" >> $root_dir/css/app.css
echo "}" >> $root_dir/css/app.css


#########################################
# Next our app.js file
touch $root_dir/js/app.js

echo "// your javascript goes here..." >> $root_dir/js/app.js


#########################################
# Create our index.html file first
index=index.html
touch $root_dir/$index

echo "<!DOCTYPE html>" >> $root_dir/$index
echo "<html lang='en'>" >> $root_dir/$index
echo >> $root_dir/$index # blank line
echo "<head>" >> $root_dir/$index
echo "  <link rel='stylesheet' href='css/app.css' />" >> $root_dir/$index
echo "  <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet' />" >> $root_dir/$index
echo "  <title>Basic Template</title>" >> $root_dir/$index
echo "</head>" >> $root_dir/$index
echo >> $root_dir/$index # blank line
echo "<body>" >> $root_dir/$index
echo "  <img src='assets/images/whiteLogo.png' alt='logo' />" >> $root_dir/$index
echo "  <h1>Hello World</h1>" >> $root_dir/$index
echo "  <h3>Lovely Day!</h3>" >> $root_dir/$index
echo "  <script src='js/app.js'></script>" >> $root_dir/$index
echo "</body>" >> $root_dir/$index

##########################################
# Next add our default images
# This copies a single image, or file or folder
# cp ~/SCRIPT_PROJECT/images/whiteLogo.png $root_dir/assets/images/logo.png

# Better Way! copies the entire images directory! Whoa!
cp -r ~/SCRIPT_PROJECT/images $root_dir/assets/


# just to print our success message!
# so our souls are not void or null.
# echo "Job Done!"

code $root_dir