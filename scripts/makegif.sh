cat IMG* | ffmpeg -framerate 4.95 -f image2pipe -i - 2018.mkv
