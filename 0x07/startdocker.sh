#!/bin/bash

docker run -d --rm -h casinopp --name casinopp -v ~/Documents/ctf2019:/ctf/work -p 8077:8077 --cap-add=SYS_PTRACE skysider/pwndocker

