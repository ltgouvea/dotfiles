#!/bin/bash

ffmpeg -y \
-f pulse -ac 2 -ar 44100 -i default \
-f pulse -ac 2 -ar 48000 -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
-filter_complex amix=inputs=2 \
"audio_recording_$(date +%x | sed 's/\//_/g').mkv"
