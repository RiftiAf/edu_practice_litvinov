#!/bin/bash
dir="${1:-.}"
if [ ! -d "$dir" ]; then
    echo "Ошибка: директория '$dir' не существует!"
    exit 1
fi
size=$(du -sk "$dir" 2>/dev/null | awk '{print $1}')
echo "Общий размер директории $dir: ${size} KB"