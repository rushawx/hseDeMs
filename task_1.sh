#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Используйте: $0 <имя_файла>"
    exit 1
fi

file=$1

echo "Список всех файлов и каталогов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        type="файл"
    elif [ -d "$item" ]; then
        type="каталог"
    else
        type="другое"
    fi
    echo "$item - $type"
done

echo "Проверяем наличие указанного файла:"
if [ -e "$file" ]; then
    echo "$file существует."
else
    echo "$file не существует."
fi

echo "Информация о правах доступа ко всем файлам:"
for item in *; do
    permissions=$(ls -l "$item" | awk '{print $1}')
    echo "$item - права доступа: $permissions"
done
