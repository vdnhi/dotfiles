#!/bin/bash

install_bluetooth() {
  sudo pacman -S bluez
  sudo pacman -S bluez-utils
  sudo pacman -S blueman
  sudo vim /etc/bluetooth/main.conf
  sudo systemctl start bluetooth.service
  sudo systemctl enable bluetooth.service
}

install_pulseaudio() {
  sudo pacman -S pulseaudio
  sudo pacman -S pulseaudio-bluetooth
  sudo systemctl start tpulseaudio
}
