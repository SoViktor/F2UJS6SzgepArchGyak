#!/bin/bash

elso=$1

masodik=$2

osszeg=$(($elso + $masodik))

kulonbseg=$(($elso - $masodik))

szorzat=$(($elso * $masodik))

hanyados=$(($elso / $masodik))

maradek=$(($elso % $masodik))



echo "Kedvenc szamom: $elso"

echo "Osszeg: $osszeg"

echo "Kulonbseg: $kulonbseg"

echo "Szorzat: $szorzat"

echo "Hanyados: $hanyados"

echo "Maradek: $maradek"
