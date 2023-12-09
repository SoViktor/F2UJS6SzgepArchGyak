#!/bin/bash

for ((i=0; i<=10; i++))
do
echo $i
done

l=0
while [ $l -le 10 ]
do
echo $l
((l++))
done

j=0
until [ $j -gt 10 ]
do
echo $j
((j++))
done
