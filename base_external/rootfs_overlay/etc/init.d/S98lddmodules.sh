#!/bin/sh

case "$1" in
    # Load scull, module driver, modprobe
    start)
        echo "Loading modules"
        scull_load
        module_load faulty
        modprobe hello
        aesdchar_load
        ;;
    stop)
        echo "Unloading modules"
        scull_unload
        aesdchar_unload
        rmmod hello
        module_unload faulty
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac