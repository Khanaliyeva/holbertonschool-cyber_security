#!/bin/bash
whois "$1" | awk -F': ' '/^(Registrant|Admin|Tech)/{section=$1;next} section && $2{gsub(/^[[:space:]]+|[[:space:]]+$/,"",$2);print section " " $1","$2}' > "$1.csv"
