#!/bin/bash
docker run -idt -v /home/jason2/Documents/ctf2019:/root/workdir --name ctf-18.04 --privileged --security-opt seccomp:unconfined ctf-18.04
