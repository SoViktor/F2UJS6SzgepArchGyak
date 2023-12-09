#!/bin/bash

echo username:
read first

echo version:
read second

echo site:
read third

yaml_content="username: $first\nversion: $second\nsite: $third"

echo -e "$yaml_content" > config.yaml
