#!/bin/bash

# Source the bash-spinner script
source ~/bash-spinner-master/spinner.sh

# Function to display a banner using figlet with Roman font
display_banner() {
    clear
    figlet -ck -w $(tput cols) -f /usr/share/figlet/calgphy2.flf "$1"
    echo "===================================="
}

# Function to run a command with a spinner
run_with_spinner() {
    local message=$1
    local command=$2

    display_banner "$message"
    start_spinner "Processing $message..."
    eval "$command" >/dev/null 2>&1  # Suppress command output
    stop_spinner $? "Done $message!"
}

# Update package lists
run_with_spinner "Updating" "sudo apt update -y"

# Upgrade packages
run_with_spinner "Upgrading" "sudo apt upgrade -y"

# Autoremove unnecessary packages
run_with_spinner "Autoremoving" "sudo apt autoremove -y"

# Autoclean package cache
run_with_spinner "Autocleaning" "sudo apt autoclean -y"

# Restart services if necessary
run_with_spinner "Restarting Services" "sudo needrestart -r a"

# Check if a reboot is required
if [ -f /var/run/reboot-required ]; then
    display_banner "Rebooting"
    echo "A reboot is required. The system will restart in 10 seconds..."
    sleep 10
    sudo reboot
else
    display_banner "Done!"
    echo "System update completed successfully! No reboot required."
fi
