#!/bin/bash

docker run -d --rm -h pwndocker --name voting2 -v ~/Documents/ctf2019:/ctf/work -p 23946:23946 --cap-add=SYS_PTRACE skysider/pwndocker

