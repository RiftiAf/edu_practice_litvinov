#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Нет аргументов"
else
    echo "Аргументы:"
    for arg in "$@"; do
        echo "$arg"
    done
fi