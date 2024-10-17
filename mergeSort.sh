#!/bin/bash

merge_sort() {
    array=("$@")
    length=${#array[@]}

    if (( length <= 1)); 
    then
        echo $array
        return
    fi

    echo "$(merge "${array[@]}")"
}



merge() {
    result=()
    middlePoint=$((length / 2))
    left=($(merge_sort "${array[@]:0:middlePoint}"))  # We have to put () for it to be treated as an array
    right=($(merge_sort "${array[@]:middlePoint}"))
    while [[ ${#left[@]} -ne 0 && ${#right[@]} -ne 0 ]]; do
        if (( ${left[0]} <= ${right[0]} )); then
            result+=(${left[0]})
            left=("${left[@]:1}")
        else
            result+=(${right[0]})
            right=("${right[@]:1}")
        fi
    done
    while [[ ${#left[@]} -ne 0 ]]; do
        result+=(${left[0]})
        left=("${left[@]:1}")
    done
    while [[ ${#right[@]} -ne 0 ]]; do
        result+=(${right[0]})
        right=("${right[@]:1}")
    done


    echo "${result[@]}"  
} 

merge_sort "$@"