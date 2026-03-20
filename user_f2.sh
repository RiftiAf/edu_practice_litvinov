#!/bin/bash
if grep -q "^$1:" /etc/passwd; then
    echo "Пользователь $1 найден!"
else
    touch ~/dont_be_sad_user_${1}_will_be_there_soon.txt
    echo "Создан файл для $1"
fi