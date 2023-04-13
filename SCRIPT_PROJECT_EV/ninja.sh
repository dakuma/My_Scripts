#!/bin/bash
# describe the script and what it does

# Creates a variable and sets the root
# to the name we pass in
root="$1"
# old way, root folder would only be site_root
# root=site_root

# Create a directory
mkdir $root

# Create subfolders for css, assets, and scripts
mkdir -p $root/css
mkdir -p $root/assets 
mkdir -p $root/js

##########################################
# Create our app.css file
echo "* {" >> $root/css/app.css
echo "  box-sizing: border-box;" >> $root/css/app.css
echo "  scroll-behavior: smooth;" >> $root/css/app.css
echo "  padding: 0;" >> $root/css/app.css
echo "  margin: 0;" >> $root/css/app.css
echo "}" >> $root/css/app.css
echo "body {" >> $root/css/app.css
echo "  background: #bb8;" >> $root/css/app.css
echo "  width: 100%;" >> $root/css/app.css
echo "  height: 100vh;" >> $root/css/app.css
echo "}" >> $root/css/app.css
echo "header {" >> $root/css/app.css
echo "  width: 100%;" >> $root/css/app.css
echo "  height: 300px;" >> $root/css/app.css
echo "}" >> $root/css/app.css

##########################################
# Create our app.js file
echo "// your javascript goes here" >> $root/js/app.js

##########################################
# Create our index.html file
echo "<!DOCTYPE html>" >> $root/index.html
echo "<html lang='en'>" >> $root/index.html
echo "<head>" >> $root/index.html
echo "  <meta charset='UTF-8'>" >> $root/index.html
echo "  <meta name='viewport' content='width=device-width, initial-scale=1.0'>" >> $root/index.html
echo "  <link rel='stylesheet' href='css/app.css' />" >> $root/index.html
echo "  <title>Basic Site</title>" >> $root/index.html
echo "</head>" >> $root/index.html
echo "<body>" >> $root/index.html
echo "  <img src='assets/images/whiteLogo.png' alt='logo' />" >> $root/index.html
echo "</body>" >> $root/index.html

# Copy the logo into the new site images directory
# cp source destination
# cp ~/SCRIPT_PROJECT_EV/images/whiteLogo.png $1/assets/images/logo.png
cp -r ~/SCRIPT_PROJECT_EV/images $1/assets/
cp ~/SCRIPT_PROJECT_EV/files/app.css $1/css/

# Print success message
# echo "Job Done!"

# opens our new project root folder in VS Code
# code $1 