#!/bin/bash

if ! [ "$1" -eq "$1" ] 2>/dev/null; then
    echo "Opa!!! $1 não é número."
    exit 
fi

if ! [ "$2" -eq "$2" ] 2>/dev/null; then
    echo "Opa!!! $2 não é número."
    exit 
fi

if ! [ "$3" -eq "$3" ] 2>/dev/null; then
    echo "Opa!!! $3 não é número."
    exit 
fi

maior=$1

if [ "$2" -ge "$maior" ]; then
    maior=$2
fi

if [ "$3" -ge "$maior" ]; then
    maior=$3
fi

echo "$maior"
