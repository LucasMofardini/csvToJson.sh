#!/bin/bash
echo "Welcome!! Please Enter Your Name"
read name
    if [ $name == "lucas" ]
        then
        echo "$name, is not welcome to here"
    else 
        echo "Hello $name"
    fi
