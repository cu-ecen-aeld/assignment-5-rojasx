#!/bin/sh

case "$1" in
    # Load scull, module driver, modprobe
    start)
        echo "Loading modules"
        scull_load
        module_load
        modprobe hello
        ;;
    stop)
        echo "Unloading modules"
        scull_unload
        rmmod hello
        module_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac