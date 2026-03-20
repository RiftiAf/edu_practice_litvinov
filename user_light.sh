#!/bin/bash
user=$(whoami)
echo "Поздравляю! Пользователь $user найден!"
grep "^$user:" /etc/passwd