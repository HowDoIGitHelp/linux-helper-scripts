#!/bin/bash
MODULE="i2c_hid_acpi"

# Check if the module is currently loaded
if lsmod | grep -q "^$MODULE"; then
    # Module is loaded, remove it to disable touchpad
    sudo rmmod "$MODULE"
else
    # Module is missing, load it to enable touchpad
    sudo modprobe "$MODULE"
fi
