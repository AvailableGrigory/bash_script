#!/bin/bash

# Извлечение IP-адреса
IP=$(ip addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}(?=/)' | head -n 1)

# Проверка, найден ли IP-адрес
if [[ -n "$IP" ]]; then
  echo "IP-адрес сервера: $IP"
else
  echo "Не удалось найти IP-адрес."
fi
