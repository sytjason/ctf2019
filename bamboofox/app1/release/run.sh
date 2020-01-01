#!/bin/bash
echo $(dirname $0)
cd $(dirname $0)
chroot --userspec=65534:65534 app /app
