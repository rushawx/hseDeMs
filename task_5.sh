#!/bin/bash

generate_random_sleep_time() {
  echo $(( RANDOM % 10 + 1 ))
}

sleep_time1=$(generate_random_sleep_time)
sleep_time2=$(generate_random_sleep_time)
sleep_time3=$(generate_random_sleep_time)

echo "Запускаем sleep на $sleep_time1 секунд..."
sleep $sleep_time1 &

echo "Запускаем sleep на $sleep_time2 секунд..."
sleep $sleep_time2 &

echo "Запускаем sleep на $sleep_time3 секунд..."
sleep $sleep_time3 &

wait

echo "Все фоновые процессы завершены."
