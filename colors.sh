#!/bin/bash
for fcolor in {0..8}; do
    foregroundColor=$(tput setaf $fcolor)
    RESET="\033[0m"
    for bcolor in {0..8}; do
        backgroundColor=$(tput setab $bcolor)
        echo -en "${foregroundColor}${backgroundColor} Te quiero ${RESET}"
    done
done