#!/data/data/com.termux/files/usr/bin/bash

# 3 saniye bekle
sleep 3

# 50 kere "ss" yazıp enter'a bas
for i in $(seq 1 50)
do
    input text "ss_at"
    input keyevent ENTER
    sleep 0.1  # Metinlerin düzgün çıkması için kısa gecikme ekledim
done
