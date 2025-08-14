#!/bin/bash
# ~/bin/stop-jack-audio.sh

# Unload PulseAudio modules
pactl unload-module module-jack-sink
pactl unload-module module-jack-source

# Stop ALSA-to-JACK MIDI bridge
pkill a2jmidid

# Stop JACK server
pkill -f "jackd -d alsa"

