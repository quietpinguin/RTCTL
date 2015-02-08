#!/bin/bash
#
# A simple script to install files in the correct locations
# and with the correct permissions.
#
# After installation do
# 
# # systemctl start rtctl.service
# # systemctl enable rtctl.service
# 
install -D -m 755 rtctl /usr/sbin/rtctl
install -D -m 755 rtctl.exec /usr/lib/systemd/scripts/rtctl
install -D -m 644 rtgroups.default /etc/default/rtgroups
install -D -m 644 rtctl.service /usr/lib/systemd/system/rtctl.service
install -D -m 644 rtctl-udev.rules /usr/lib/udev/rules.d/95-rtclt.rules
