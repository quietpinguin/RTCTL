# RTCTL
rtctl - manipulate real-time attributes for groups of processes or individual threads

This is an alternative to rncbc's famous rtirq and can be used, for example, to tweak the rtprio, scheduler and cpu affinity of hardware irqs.

The files here have been adapted from the rtctl scripts used in RHEMGR installations. The original scripts are copyrighted (2007) by Red Hat, Inc. and are free software for copying according to the GNU GENERAL PUBLIC LICENSE. There is no warranty; not even for merchantability or fitness for a particular purpose.

The scripts have been modified to:
- work with preemptive kernels without the RT patch,
- include a systemd service,
- use the Manjaro Linux file structure, and
- include a udev rule to restart the service when an audio device is hot-plugged.

For use with other distributions, the "hard coded" paths in the scripts may need to be adjusted.

For rtctl to function, the kernel must be started with the kernel parameter "threadirqs".

To Set RTPRIO, scheduler or affinity for specific groups or individual threads edit /etc/default/rtgroups and (re)start the systemd service.
