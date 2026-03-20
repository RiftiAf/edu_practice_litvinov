#!/bin/bash
echo "Топ пользователей по использованию дискового пространства в /home:"
if [ -d "/home" ]; then
    du -sk /home/* 2>/dev/null | sort -rn | while read size path; do
        user=$(basename "$path")
        size_mb=$((size / 1024))
        echo "$user: ${size_mb} MB"
    done
fi