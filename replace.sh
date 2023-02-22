#!/bin/bash

regex="PATH"
replacement=""

for file in "$@"; do
   if [[ $file == *.desktop ]]; then
        replacement="$(pwd)"
    else
        replacement="$(dirname "$(pwd)")"
    fi
    while (true); do
        if grep -q "$regex" "$file"; then
            awk -v regex="$regex" -v replacement="$replacement" '{gsub(regex, replacement)}1' "$file" > tmpfile && mv tmpfile "$file"
        else
            break
        fi
    done
done
