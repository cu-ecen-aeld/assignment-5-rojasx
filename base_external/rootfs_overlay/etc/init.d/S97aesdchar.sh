#!/bin/sh

case "$1" in
    # Load the device!
    start)
        echo "Loading aesd char device"
        aesdchar_load
        ;;
    stop)
        echo "Unloading aesd char device"
        aesdchar_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac