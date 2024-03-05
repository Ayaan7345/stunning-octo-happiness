#!/bin/bash
# If you move this file into your /bin folder and run a chmod +x nmapauto.sh you can use this script at anytime you want

# Function to run Nmap scan
run_nmap_scan() {
    local target=$1
    local output_file="service_and_version_scan_$target.txt"
    echo "Running Nmap scan for target: $target"
    echo "Results will be saved to: $output_file"
    nmap -sC -sV -p- $target > "$output_file"
    echo "Nmap scan completed. Results saved to: $output_file"
}

# Main function
main() {
    read -p "Enter the target IP address or hostname: " target
    run_nmap_scan $target
}

# Call the main function
main
