#!/bin/bash

# Function to check internet connectivity
check_internet() {
    echo "Checking internet connectivity..."
    if ping -c 4 google.com >/dev/null 2>&1; then
        echo "Internet is reachable."
    else
        echo "Internet is not reachable."
    fi
}

# Function to test network speed
network_speed() {
    echo "Testing network speed..."
    speedtest
}

# Function to trace the route to a remote host
trace_route() {
    read -p "Enter the hostname or IP address to trace: " host
    traceroute "$host"
}

# Main menu
while true; do
    echo "Network Diagnostic Tool"
    echo "1. Check internet connectivity"
    echo "2. Test network speed"
    echo "3. Trace route to a host"
    echo "4. Quit"

    read -p "Enter your choice: " choice
    case $choice in
        1)
            check_internet
            ;;
        2)
            network_speed
            ;;
        3)
            trace_route
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
