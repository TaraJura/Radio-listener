# Termux - commands

# start recording(15sec by default)

termux-microphone-record -e awr_wide -f filename.amr

# stop recording (if its still recording)

termux-microphone-record -q

# convert files from .amr to .mp3

ffmpeg -i filename.amr filename.mp3
