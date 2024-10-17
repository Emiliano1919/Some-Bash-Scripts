#!/bin/bash

merge_sort() {
    array=("$@")
    length=${#array[@]}

    if (( length -le 1))
    then
        echo $array
    fi

    middlePoint=$(($length / 2))
    left=merge_sort "${array[@]:0:middlePoint}"
    right=merge_sort "${my_array[@]:middlePoint}"
    echo "$(merge "${left[@]}" "${right[@]}")"
}



merge() {
    result=()
    local left=("$@")  
    local right=("$@") 
    while [[ ${#left[@]} -ne 0 && ${#right[@]} -ne 0 ]]; do
        if (( ${left[0]} -le ${right[0]} )); then
            result+=(${left[0]})
            shift left
        else
            result+=(${right[0]})
            shift right
        fi
    done
    while [[ ${#left[@]} -ne 0]]; do
        result+=(${left[0]})
        shift left
    done
    while [[ ${#right[@]} -ne 0]]; do
        result+=(${right[0]})
        shift left
    done


    echo "${merged_array[@]}"  
}