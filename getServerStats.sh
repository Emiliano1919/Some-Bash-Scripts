#!/bin/bash
top -l1 | grep -E "CPU\ usage|PhysMem"
df -ch
top -l1 | head -n 15| tail -n 5
top -l1 -o mem| head -n 15| tail -n 5