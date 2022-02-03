#!/bin/zsh

if [ -z "$1" ]
  then
    echo "No version supplied"
  else
    find .github/**/*.yml | xargs sed -i "" "s/\(parachutehome\/workflows.*\)@main$/\1@$1/g"
    echo "Version updated from main"
fi
