#!/bin/bash

sort(){
    array=("$@")
    length=${#array[@]}
    result=()
    for (( i=1; i < $length; i++ )); do
        j=i
        while (( j > 0 && array[j] < array[j-1] )); do
            tmp=${array[j]}
            array[j]=${array[j-1]}
            array[j-1]=$tmp
            (( j-- ))
        done
    done
    echo "${array[@]}"
}
sort "$@"