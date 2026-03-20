#!/bin/bash
if [ -L "$1" ]; then
    echo "Символическая ссылка"
elif [ -f "$1" ]; then
    echo "Обычный файл"
elif [ -d "$1" ]; then
    echo "Директория"
else
    echo "Не существует"
fi