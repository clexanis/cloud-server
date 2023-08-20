#!/bin/bash
apt-get install systemd-zram-generator -y

# Tweaks
## Set zram at total ram size and lift max size limit.
### For Debian 11 and Ubuntu 22.04
sed -i 's|zram-fraction = 0.5|zram-fraction = 1|' /etc/systemd/zram-generator.conf
sed -i 's|# max-zram-size = 4096|max-zram-size = 40960' /etc/systemd/zram-generator.conf
### For Debian 12
sed -i 's|zram-size = min(ram / 10, 2048)|zram-size = min(ram / 1)' /etc/systemd/zram-generator.conf
## Reduce latency
echo "vm.page-cluster = 0" > /etc/sysctl.d/90-zram.conf
## Reduce cache presure to let zram be more used
echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.d/90-zram.conf
## Load new value
sysclt --load /etc/sysctl.d/90-zram.conf

# Restart zram0
systemclt restart systemd-zram-setup@zram0.service
