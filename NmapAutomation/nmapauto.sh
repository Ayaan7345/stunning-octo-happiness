#!/bin/bash
#if you move this file into your /bin folder and run a chmod +x nmapauto.sh you can use this script at anytime you want
# Function to run Nmap scan
run_nmap_scan() {
    local target=$1
    echo "Running Nmap scan for target: $target"
    nmap -sC -sV $target
}

# Main function
main() {
    read -p "Enter the target IP address or hostname: " target
    run_nmap_scan $target
}

# Call the main function
main
