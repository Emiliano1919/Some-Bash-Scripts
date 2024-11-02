#!/bin/bash

sort(){
    array=("$@")
    length=${#array[@]}
    for (( i=1; i < length; i++ )); do
        j=i
        while [[ j -gt 0 && ${array[j]} < ${array[j-1]} ]]; do 
        # The problem was that (()) is only arithmetical we wanted [[]] for conditionals
        # The previous implementation worked but left a warning.  
            tmp=${array[j]}
            array[j]=${array[j-1]}
            array[j-1]=$tmp
            (( j-- ))
        done
    done
    echo "${array[@]}"
}
sort "$@"