#!/usr/bin/fish
while true
    for x in (seq 3)
        notify-send "Pomodoro Starting" (uptime | sed 's/,.*$//')
        sleep 1500
        notify-send "Pomodoro Over" (uptime | sed 's/,.*$//')
        sleep 300
        notify-send "Rest Over" (uptime | sed 's/,.*$//')
    end

    notify-send "Final Pomodoro Starting" (uptime | sed 's/,.*$//')
    sleep 1500
    notify-send "Final Pomodoro Over" (uptime | sed 's/,.*$//')
    sleep 1800
    notify-send "Big Rest Over" (uptime | sed 's/,.*$//')
end
