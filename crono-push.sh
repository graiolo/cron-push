#!/bin/bash

while true
do
    cd PATH
    git add .
    cd PATH
    git commit -m "Self Push: $(date)"
    cd PATH
    git push
    sleep 3600
done
