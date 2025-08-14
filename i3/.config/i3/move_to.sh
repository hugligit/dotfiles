#!/bin/sh

WORKSPACE=$(yad --entry)

i3-msg move container to workspace $WORKSPACE
