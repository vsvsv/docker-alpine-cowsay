#!/bin/sh

if [ $# -eq 0 ]; then
    fortune | cowsay
else
    cowsay "$@"
fi
