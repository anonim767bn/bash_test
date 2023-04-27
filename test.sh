#!/bin/bash
filename=file

chmod +x file_creator.sh
./file_creator $filename

if [[ -f $filename ]]
then
    echo "file $filename существует"
    rm $filename
    exit 0
else
    echo "file $filename не существует, тест провален"
    exit 1
fi