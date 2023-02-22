#!/bin/bash

ft_push() {
    cd PATH && git add .
    cd PATH && git commit -m "Push (log off): $(date)"
    cd PATH  && git push
}

trap ft_push SIGTERM

while true; do
    sleep 1
done