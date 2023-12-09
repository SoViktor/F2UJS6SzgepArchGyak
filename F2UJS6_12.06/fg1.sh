#!/bin/bash

osszead() {

if [ "$#" -eq 0 ]; then
echo "0"
else
osszeg=0
for arg in "$@"; do
osszeg=$((osszeg + arg))
done
echo "$osszeg"
fi
}

eredmeny=$(osszead "$@")

echo "Osszeg: $eredmeny"

