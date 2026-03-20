#!/bin/bash
if [ -e "$1" ]
then
    echo "Файл есть"
else
    echo "Файла нет"
fi