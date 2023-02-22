#!/bin/bash

regex="PATH"
replacement="$(pwd)"

for file in "$@"; do
    while (true); do
        if grep -q "$regex" "$file"; then
            awk -v regex="$regex" -v replacement="$replacement" '{gsub(regex, replacement)}' "$file" > tmpfile && mv tmpfile "$file"
            echo "Sostituita la parola '$regex' con '$replacement' nel file $file"
        else
            echo "La parola '$regex' non è presente nel file $file"
            break
        fi
    done
done
