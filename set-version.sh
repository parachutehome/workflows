#!/bin/zsh

if [ -z "$1" ]
  then
    echo "No version supplied"
  else
    # find parachutehome/workflows...@main and replace with parachutehome/workflows...@VERSION
    find .github/**/*.yml | xargs sed -i "" "s/\(parachutehome\/workflows.*\)@main$/\1@$1/g"
    echo "Version updated from main"
fi
