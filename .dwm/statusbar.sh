#!/bin/bash

status() {
        while :; do
                xsetroot -name "$(date '+%H:%M | %d/%m/%Y')"
                sleep 1m
        done
}

status
