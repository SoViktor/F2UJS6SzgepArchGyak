#!bin/bash

read -p "Kerek egy pozitiv egesz szamot: " N

if [[ ! $N =~ ^[1-9][0-9]*$ ]]; then
echo "Rossz szamot adott meg"
else
tomb=()
for ((i = 0; i < N; i++)); do
tomb+=($((RANDOM % 100 + 1)))
done


echo "A tomb elemei: ${tomb[@]}"

min_ertek=${tomb[0]}
min_hely=0
for i in "${!tomb[@]}"; do
if [ "${tomb[i]}" -lt "$min_ertek" ]; then
min_ertek="${tomb[i]}"
min_hely="$i"
fi
done

echo "A tomb minimuma: $min_ertek helye: $min_hely"

max_ertek=${tomb[0]}
max_hely=0
for i in "${!tomb[@]}"; do
if [ "${tomb[i]}" -gt "$max_ertek" ]; then
max_ertek="${tomb[i]}"
max_hely="$i"
fi
done

echo "A tomb maximuma: $max_ertek helye: $max_hely"

osszeg=0
for element in "${tomb[@]}"; do
((osszeg += element))
done

echo "A tomb elemeinek osszege: $osszeg"

atlag=$(echo "scale=2; $osszeg / $N" | bc)

echo "A tomb elemeinek atlaga: $atlag"
fi
