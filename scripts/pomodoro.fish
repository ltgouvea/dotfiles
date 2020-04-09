#!/usr/bin/fish
set DING /home/k2/.config/audiofiles/ding.wav
while true
    for x in (seq 3)
        notify-send "Pomodoro Starting" (uptime | sed 's/,.*$//')
        paplay $DING
        sleep 1500
        notify-send "Pomodoro Over" (uptime | sed 's/,.*$//')
        paplay $DING
        sleep 300
        notify-send "Rest Over" (uptime | sed 's/,.*$//')
        paplay $DING
    end

    notify-send "Final Pomodoro Starting" (uptime | sed 's/,.*$//')
    paplay $DING
    sleep 1500
    notify-send "Final Pomodoro Over" (uptime | sed 's/,.*$//')
    paplay $DING
    sleep 1800
    notify-send "Big Rest Over" (uptime | sed 's/,.*$//')
    paplay $DING
end
