#!/bin/bash

#colors
RED='\033[1;31m'
GREEN='\033[1;32m'
DEFAULT='\033[0m' # No Color

function vercomp {
  if [[ $1 == $2 ]]
  then
    return 0
  fi
  local IFS=.
  local i ver1=($1) ver2=($2)
  # fill empty fields in ver1 with zeros
  for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
  do
    ver1[i]=0
  done
  for ((i=0; i<${#ver1[@]}; i++))
  do
    if [[ -z ${ver2[i]} ]]
    then
      # fill empty fields in ver2 with zeros
      ver2[i]=0
    fi
    if ((10#${ver1[i]} > 10#${ver2[i]}))
    then
      return 1
    fi
    if ((10#${ver1[i]} < 10#${ver2[i]}))
    then
      return 2
    fi
  done
  return 0
}


echo 'Checking iTunes compatibility'
itunes_version=$(defaults read /Applications/iTunes.app/Contents/Info CFBundleShortVersionString)
vercomp 12.7 $itunes_version
if [ $? == 1 ]
then
  printf "iTunes version is ${GREEN}compatible${DEFAULT}\n"
else
  printf "iTunes version is ${RED}not compatible${DEFAULT}\n"
  printf "Your iTunes version (${itunes_version}) os too high\n"
  echo 'Download iTunes 12.6.3 (https://support.apple.com/en-us/HT208079)'
fi

# This is for the user to type into their terminal
#cd ~/Downloads
#git clone https://github.com/andermoran/Ghosted-Jailed
#cd Ghosted-Jailed
#chmod +x install.sh
#./install.sh

open -a iTunes Snapchat_v10.26.0_andermoran.ipa
echo 'Modified Snapchat .ipa moved to iTunes'