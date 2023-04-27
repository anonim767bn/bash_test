#!/bin/bash
if [[ -f $1 ]]
then
    rm $1
    echo "file is removed"
else
    echo "file not find"
fi
