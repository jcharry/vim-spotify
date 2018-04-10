#! /bin/bash
#
# spotify.sh
# Copyright (C) 2018 jcharry <jcharry@JCHARRY-2598>
#
# Distributed under terms of the MIT license.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

while getopts ":c:" opt; do
  case $opt in
    c)
      osascript $DIR/spotify-$OPTARG.scpt
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


