#/!/bin/bash
for color in {0..256}; do
    colorText=$(tput setaf ${color})
    RESET="\033[0m"
    printf "${colorText} color  ${color} ${RESET}\n"
done