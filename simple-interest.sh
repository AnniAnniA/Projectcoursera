#!/bin/bash

# Функция для расчета простого процента
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Формула простого процента: (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

    echo "Principal Amount: $principal"
    echo "Rate of Interest: $rate%"
    echo "Time Period: $time years"
    echo "Simple Interest: $interest"
}

# Ввод данных от пользователя
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Вызов функции
calculate_simple_interest $principal $rate $time
