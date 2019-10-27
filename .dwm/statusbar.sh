#!/bin/bash

getDate() {
        echo " $(date '+%H:%M | %d/%m/%Y')"
}

while :; do
        xsetroot -name " $(getDate)"
        sleep 1m
done
