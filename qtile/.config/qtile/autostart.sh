#!/bin/sh

picom -b --config ~/.config/picom/picom.conf &
systemctl --user start docker-desktop &
