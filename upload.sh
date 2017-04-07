#!/bin/bash
git config --global user.email "anna.studienarbeit@gmail.com"
git config --global user.name "ProjectAnna"
#clone the repository
git clone --quiet https://ProjectAnna:$GITHUB_API_KEY@github.com/AnnaForAndroid/ANNADoku
cp -Rf ./ANNA/dokumentation.pdf .
#add, commit and push files
git add -f .
git commit -m "[skip ci] Travis build $TRAVIS_BUILD_NUMBER pushed"
git push
