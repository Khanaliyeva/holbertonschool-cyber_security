#!/bin/bash
whois "$1" | awk -F': ' '/^[[:space:]]*(Registrant|Admin|Tech)/{gsub(/^[[:space:]]+|[[:space:]]+$/,"",$1);gsub(/^[[:space:]]+|[[:space:]]+$/,"",$2);print $1","$2}' > "$1.csv"
