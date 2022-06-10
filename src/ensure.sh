#!/bin/usr/env bash

ensure::env_var_exists(){
    if [[ -z "${$1}" ]];then
        echoerr "The env variable $1 is required"
        exit 1
    fi
}

ensure::total_args(){
    local -r number_args=$(( $# -1 ))
    local -r assert_args=$1
    if [[ $number_args != $assert_args ]];then
        echoerr "Illegal number of parameters, $assert_args expected but $number_args found"
        exit 1
    fi
}
