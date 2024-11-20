#!/bin/bash

input_file="input.txt"

if [[ ! -f "$input_file" ]]; then
  echo "Файл $input_file не найден!"
  ls $input_file 2> error.log
  exit 1
fi

wc -l < "$input_file" > output.txtg
