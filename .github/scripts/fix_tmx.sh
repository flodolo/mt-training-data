#! /usr/bin/env bash

# Temporary fix for 1681653

script_path=$(dirname "$0")
root_path="${script_path}/../../"

cd "${root_path}"
for file in "*/*.tmx"
do
    if [ "${file}" = "*/*.tmx" ]
    then
        echo "No TMX file found"
    else
        echo "Cleaning up: ${file}"
        sed -i "s/\x03//g" "${file}"
    fi
done
