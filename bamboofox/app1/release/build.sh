#!/bin/bash
cd $(dirname $0)
echo "BAMBOOFOX{aaaaaaaaaaaaaaaaaaaaa}" > app/flag1
echo "BAMBOOFOX{bbbbbbbbbbbbbbbbbbbbb}" > app/flag2
chmod 0400 app/flag2
chown root:root -R app
chmod +s app/read_flag

apt install apparmor apparmor-utils apparmor-profiles -y
aa-autodep app/read_flag
aa-enforce app/read_flag

