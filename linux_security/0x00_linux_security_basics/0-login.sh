#!/bin/bash
# 0-login.sh — Show the last 5 login sessions for all users

# Must be run as root or with sudo
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi

# Display the last 5 login sessions
last -n 5
