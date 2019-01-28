#!/bin/bash
while true;
do
    for (( i = 0; i < 3; i++ )); do
        notify-send "Pomodoro Starting"
        sleep 1500
        notify-send "Pomodoro Over"
        sleep 300
        notify-send "Rest Over"
    done

    notify-send "Final Pomodoro Starting"
    sleep 1500
    notify-send "Final Pomodoro Over"
    sleep 1800
    notify-send "Big Rest Over"
done
