#!/bin/zsh

if [ -z "$1" ]
  then
    echo "No version supplied"
  else
    find .github/**/*.yml | xargs sed -i "" "s/@main$/@$1/g"
    echo "Version updated"
fi
