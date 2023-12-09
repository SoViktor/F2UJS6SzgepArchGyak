#!/bin/bash

veletlen_szam_general() {

local N=${1:-5}
local x=${2:-1}
local y=${3:-90}

random_szamok=()

for ((i = 0; i<N; i++)); do
random_szamok+=($((RANDOM % (y - x +1) + x)))
done

echo "$N db veletlenszeru szam $x es $y kozott: ${random_szamok[@]}"
}

veletlen_szam_general "$@"


