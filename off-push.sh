#!/bin/bash

SIGN="SIGHUP SIGQUIT SIGABRT SIGSTOP SIGTSTP SIGTTOU SIGTERM SIGINT SIGKILL"

ft_push() {
    cd PATH && git add .
    cd PATH && git commit -m "Push (log off): $(date)"
    cd PATH && git push
    exit 0
}

for SIGNAL in $SIGN;
do
     trap "ft_push $SIGNAL" $SIGNAL
done
 
while true; do
    sleep 1
done
