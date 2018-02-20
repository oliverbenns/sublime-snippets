#!/bin/bash

BASE_DIR=$(dirname "$0")
SUBL_USER_DIR="$1"

if [ ! "$SUBL_USER_DIR" ]
  then
    SUBL_USER_DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi

if [ ! -d "$SUBL_USER_DIR" ]
  then
    echo "Destination $SUBL_USER_DIR does not exist. Please check that the destination is set correctly and that Sublime is installed."
    exit 1
fi

cp -R "$BASE_DIR/snippets/." "$SUBL_USER_DIR"
echo "Snippets installed at $SUBL_USER_DIR"
