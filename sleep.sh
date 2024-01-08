#!/bin/bash

time=$(who -b | cut -d":" -f2)
time=$((time%10))
sleep "${time}m"
