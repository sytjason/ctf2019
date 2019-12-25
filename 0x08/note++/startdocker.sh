#!/bin/bash

docker run -idt -v /home/jason/Documents/ctf2019:/root/workdir --name ctf-16.04 --privileged --security-opt seccomp:unconfined ctf-16.04
docker start ctf-16.04

