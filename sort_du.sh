#!/bin/bash
dir="${1:-.}"
if [ ! -d "$dir" ]; then
    echo "Ошибка: директория '$dir' не существует!"
    exit 1
fi
echo "3 самых старых файла в: $dir"
find "$dir" -type f -printf "%T@ %p\n" 2>/dev/null | sort -n | head -3 | while read timestamp file; do
    date_str=$(date -d "@${timestamp%.*}" "+%Y-%m-%d %H:%M:%S" 2>/dev/null)
    echo "$file - $date_str"
done