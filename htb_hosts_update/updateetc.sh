#!/bin/bash

# Function to add a line to /etc/hosts file
add_line_to_etc_hosts() {
    local ip=$1
    local hostname=$2
    local file="/etc/hosts"

    # Check if the file exists
    if [ -f "$file" ]; then
        # Add the line to the file
        echo "$ip $hostname" >> "$file"
        echo "Line '$ip $hostname' added to $file"
    else
        echo "Error: File $file does not exist."
    fi
}

# Main function
main() {
    read -p "Enter the IP address: " ip
    read -p "Enter the hostname: " hostname

    # Call the function to add the line to /etc/hosts file
    add_line_to_etc_hosts "$ip" "$hostname"
}

# Call the main function
main