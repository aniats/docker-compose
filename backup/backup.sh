#!/bin/bash

tar -cvpzf backup.tar.gz \
    --exclude=./backup.tar.gz \
    --exclude=../jenkins/plugins \
    --one-file-system \
    ../gitea ../jenkins ../mysql
