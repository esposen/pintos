#!/bin/bash

make clean
make

pintos --gdb -- run alarm-multiple