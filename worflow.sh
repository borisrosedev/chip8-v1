#!/bin/bash


function add_commit_push {
    echo "do you want to launch the add_commit_push workflow ?"
    read -r answer 
    if [ "$answer" = 'yes' ]; then 
        git add .
        git commit -m "$1"
        git push origin main
    else 
        echo "no add_commit_push workflow launched"
    fi
}


function init {
    if [[ ! -e '.git' ]]; then 
        echo "no .git reposity"
        echo "------------------"
        git init # initialize a local git repository 
        git remote add origin git@github.com:borisrosedev/chip8-v1.git
    else 
        echo "✅ this repository is already a git one"
    fi
}

init 
add_commit_push "$1"

