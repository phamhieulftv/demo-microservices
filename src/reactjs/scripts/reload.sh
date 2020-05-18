#!/bin/bash

SERVICE_NAME=${SERVICE_NAME:-node}
CONSUL=${CONSUL:-consul}

preStart() {
    echo "node preStart"
}

onChange() {
    echo "node onChange"
}

help() {
    echo "Usage: ./reload.sh preStart  => first-run configuration for node"
    echo "       ./reload.sh onChange  => [default] update node config on upstream changes"
}

until
    cmd=$1
    if [ -z "$cmd" ]; then
        onChange
    fi
    shift 1
    $cmd "$@"
    [ "$?" -ne 127 ]
do
    onChange
    exit
done
