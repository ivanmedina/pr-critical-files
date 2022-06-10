#!/usr/bin/env bash

checker::check(){
    local -r patterns="$1"
    local -r message=$(echo "${2//\\/\\\\}")
    echo $message
}