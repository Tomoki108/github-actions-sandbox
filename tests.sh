#!/bin/bash

app_name=$(echo "/prev foo" | sed 's|^/prev ||')

valid_app_names=(foo bar buz)
for valid_app_name in "${valid_app_names[@]}"; do
    if [[ $app_name == $valid_app_name ]]; then
    echo "hello" 
        # echo "app=$app_name" >> $GITHUB_OUTPUT
        exit 0
    fi
done

echo "Invalid app name: $app_name"
exit 1