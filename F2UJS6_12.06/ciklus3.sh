#!/bin/bash

prime(){
szam=$1
if [ $szam -lt 2 ]; then
return 1
fi

for ((i=2; i <= szam /2; i++)); do
if [ $((szam % i)) -eq 0 ]; then
return 1
fi
done

return 0
}

read -p "Kerek egy egesz szamot:" kapott_szam

if [[ ! $kapott_szam =~ ^[1-9][0-9]*$ ]]; then
echo "Nem jo szam"
else
prime $kapott_szam
if [ $? -eq 0 ]; then
echo "$kapott_szam prim"
else
echo "$kapott_szam nem prim"
fi
fi


