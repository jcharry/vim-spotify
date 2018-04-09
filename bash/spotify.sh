#! /bin/bash
#
# spotify.sh
# Copyright (C) 2018 jcharry <jcharry@JCHARRY-2598>
#
# Distributed under terms of the MIT license.

while getopts ":c:" opt; do
  case $opt in
    c)
      osascript ../applescripts/spotify-$OPTARG.scpt
      ;;
    \?)
      echo "Invalid option"
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument" >&2
      exit 1
      ;;
  esac
done


