#!/bin/bash
cp -f $(<~/.cache/wal/wal) ~/login.png
convert ~/login.png ~/login.png
i3 restart
