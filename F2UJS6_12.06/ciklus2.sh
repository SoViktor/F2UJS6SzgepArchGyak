#!/bin/bash

szam=$((RANDOM %100 +1))

echo "Veletlen syam: $szam"

i=1

while [ $((i*i)) -le $szam ]
do
negyzet=$((i*i))
echo $negyzet
((i++))
done

