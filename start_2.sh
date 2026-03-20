#!/bin/bash
if [ -z "$1" ]; then
    echo "Ошибка: имя не указано!"
else
    echo "Привет, $1!"
fi