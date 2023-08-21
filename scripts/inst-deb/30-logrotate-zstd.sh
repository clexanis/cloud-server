#!/bin/bash
apt-get install zstd -y
printf "compress\ncompresscmd /usr/bin/zstd\ncompresscmd /usr/bin/zstd\ncompresscmd /usr/bin/zstd\ncompresscmd /usr/bin/zstd\n" > /etc/logrotate.d/00compress
