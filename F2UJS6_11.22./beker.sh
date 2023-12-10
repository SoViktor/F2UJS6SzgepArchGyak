#!/bin/bash

echo Name:
read nev

echo Phone:
read telefon

yaml_content="name : $nev\nPhone : $telefon"

echo -e "$yaml_content" > beker.yaml
