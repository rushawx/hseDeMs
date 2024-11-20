#!/bin/bash

echo "Текущее значение переменной PATH:"
echo "$PATH"

if [ -z "$1" ]; then
  echo "Пожалуйста, укажите директорию для добавления в PATH."
  exit 1
fi

export PATH="$1:$PATH"

echo "Обновленное значение переменной PATH:"
echo "$PATH"
