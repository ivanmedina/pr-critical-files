#!/usr/bin/env bash

source "$CHECK_CRITICAL_HOME/src/ensure.sh"
source "$CHECK_CRITICAL_HOME/src/checker.sh"

main(){

    ensure::env_var_exists "GITHUB_REPOSITORY"
    ensure::env_var_exists "GITHUB_EVENT_PATH"
    ensure::total_args 3 "$@"
    export GITHUB_TOKEN ="$1"
    ensure::check "$2" "$3"
    exit $?

}