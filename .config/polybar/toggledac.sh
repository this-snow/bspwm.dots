#!/bin/bash

if pactl get-default-sink | grep -q "alsa_output.usb-Burr-Brown_from_TI_USB_Audio_DAC-00.analog-stereo"; then
    # set dac for headphones
    pactl set-default-sink alsa_output.usb-Topping_DX3_Pro_-00.HiFi__hw_Pro_0__sink
else
    # set dac for desktop speakers
    pactl set-default-sink alsa_output.usb-Burr-Brown_from_TI_USB_Audio_DAC-00.analog-stereo
fi
