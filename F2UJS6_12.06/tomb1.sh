#!bin/bash

db=10

tomb=()

for ((i=0; i < db; i++)); do
tomb+=($RANDOM)
done

echo "Erdedeti: ${tomb[@]}"

for ((l = 0; l < db ; l++)); do
((tomb[l]++))
done

echo "Novelt: ${tomb[@]}"
