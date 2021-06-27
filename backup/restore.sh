#!/bin/bash

if [ $# -eq 0 ]; then
    echo "You must supply a backup to restore from."
    exit 0
fi

tar xvf "$1" --directory ..
