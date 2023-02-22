#!/bin/bash

regex="PATH"
replacement="$(pwd)"

for file in "$@"; do
    while (true); do
        if grep -q "$regex" "$file"; then
            awk -v regex="$regex" -v replacement="$replacement" '{gsub(regex, replacement)}1' "$file" > tmpfile && mv tmpfile "$file"
        else
            break 
        fi
    done
done
