#!/bin/bash

read -p "Введите число: " number

if (( $(echo "$number > 0" | bc -l) )); then
    echo "Число положительное."
    count=1
    while [ $count -le $number ]; do
        echo $count
        ((count++))
    done
elif (( $(echo "$number < 0" | bc -l) )); then
    echo "Число отрицательное."
else
    echo "Это число ноль."
fi
