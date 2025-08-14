##!/bin/bash

## Start JACK server
## jackd -d alsa -d hw:2,0 -p 128 -n 3 -r 48000 &
#jackd -d alsa -d hw:2,0 -p 128 -n 3 -r 48000 

## Wait for JACK to initialise
#sleep 5

## Load PulseAudio -> JACK bridge modules
#SINK_ID=$(pactl load-module module-jack-sink)
#SOURCE_ID=$(pactl load-module module-jack-source)

## Store module IDs so we can unload them later
#echo "$SINK_ID" > /tmp/jack_pa_sink.id
#echo "$SOURCE_ID" > /tmp/jack_pa_source.id

## Start ALSA -> JACK MIDI bridge
#a2jmidid -e &
#echo $! > /tmp/jack_a2jmidid.pid


# Start JACK in foreground
# pkill jackd
jackd -d alsa -d hw:2 -r 48000 -p 128 -n 3 &
sleep 5

JACK_PID=$!

# Give JACK a moment to start
sleep 5

# Start ALSA-to-JACK MIDI bridge
a2jmidid -e &

# Load JACK sink/source modules for PulseAudio
pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2

echo "JACK server PID: $JACK_PID"
wait $JACK_PID

