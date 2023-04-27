#!/bin/bash
echo "запущен тест удаления файла"
filename=file
if [[ ! -f $filename ]]
then
    touch $filename
fi

chmod +x file_remover.sh
./file_remover.sh $filename

if [[ ! -f $filename ]]
then
    echo "файл $filename был удалён"
else
    echo "файл $filename не был удалён"
    rm $filename
fi