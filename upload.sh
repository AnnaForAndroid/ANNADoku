#!/bin/bash
mkdir $HOME/buildPdf/
cp -R ./ANNA/dokumentation.pdf $HOME/buildPdf/
#go to home and setup git
cd $HOME
git config --global user.email "anna.studienarbeit@gmail.com"
git config --global user.name "ProjectAnna"
git clone --quiet https://ProjectAnna:$GITHUB_API_KEY@github.com/AnnaForAndroid/ANNADoku
#go into directory and copy data we're interested
cd $HOME/ANNADoku
cp -Rf $HOME/buildPdf/* .
#add, commit and push files
git add -f .
git commit -m "[skip ci] Travis build $TRAVIS_BUILD_NUMBER pushed"
git push
