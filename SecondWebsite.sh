#i!/bin/bash
GIT=git@github.com:syamu99/syamuRemoteTemplete.github.io.git
REPO=syamuRemoteTemplete.github.io
WEBSITE=https://www.tooplate.com/zip-templates/2103_central.zip
PKG=apt
FILE=2103_central
sudo $PKG update
sudo $PKG install wget git unzip figlet -y
git clone $GIT
mkdir -p webfiles
cd webfiles
sudo wget $WEBSITE
sudo unzip -o $FILE.zip
sudo rm -rf ~/$REPO/*
sudo cp -r $FILE/* ~/$REPO/
cd ..
sudo rm -rf webfiles
cd ~/$REPO
git add .
git status
sleep 2
git commit -m "$(date)"
git push -f
figlet done     
