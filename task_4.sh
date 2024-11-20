#!/bin/bash

read -p "Введите имя: " name

read -p "Введите 1 число: " num1

read -p "Введите 2 число: " num2

greet() {
  local name="$1"
  echo "Hello, $name"
}

sum() {
  local num1="$1"
  local num2="$2"
  echo $((num1 + num2))
}

greeting_message=$(greet $name)
echo "$greeting_message"

result=$(sum $num1 $num2)
echo "Сумма: $result"
