#!/bin/bash
if [ -d "$1" ]
then
    echo "Папка уже есть"
else
    mkdir "$1"
    echo "Папка создана"
fi