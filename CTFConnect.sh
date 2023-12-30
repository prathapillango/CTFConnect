#!/bin/bash

echo "
 ██████╗████████╗███████╗ ██████╗ ██████╗ ███╗   ██╗███╗   ██╗███████╗ ██████╗████████╗
██╔════╝╚══██╔══╝██╔════╝██╔════╝██╔═══██╗████╗  ██║████╗  ██║██╔════╝██╔════╝╚══██╔══╝
██║        ██║   █████╗  ██║     ██║   ██║██╔██╗ ██║██╔██╗ ██║█████╗  ██║        ██║   
██║        ██║   ██╔══╝  ██║     ██║   ██║██║╚██╗██║██║╚██╗██║██╔══╝  ██║        ██║   
╚██████╗   ██║   ██║     ╚██████╗╚██████╔╝██║ ╚████║██║ ╚████║███████╗╚██████╗   ██║   
 ╚═════╝   ╚═╝   ╚═╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═╝   
                                                                                       
Welcome to the VPN Connection Tool!
Please select a VPN configuration to connect.
"

# Directory containing your VPN configuration files
CONFIG_DIR="/path/to/your/vpn/configs"

# Check if OpenVPN is installed
if ! command -v openvpn &> /dev/null; then
    echo "OpenVPN is not installed. Please install OpenVPN."
    echo "try : sudo apt install openvpn"
    exit 1
fi

# Check if the configuration directory exists
if [ ! -d "$CONFIG_DIR" ]; then
    echo "VPN configuration directory not found."
    echo "specify the vpn files directory"
    exit 1
fi

# Display available configuration files in a numbered list
echo "Available VPN configurations:"
CONFIG_FILES=("$CONFIG_DIR"/*.ovpn)
for ((i=0; i<${#CONFIG_FILES[@]}; i++)); do
    echo "$((i+1))) $(basename "${CONFIG_FILES[$i]}")"
done

read -p "Enter the number to the VPN configuration you want to connect: " choice

# Validate user input
if [[ ! "$choice" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number."
    exit 1
fi

# Connect to the selected VPN configuration
if (( choice > 0 && choice <= ${#CONFIG_FILES[@]} )); then
    SELECTED_CONFIG="${CONFIG_FILES[$((choice-1))]}"
    sudo openvpn --config "$SELECTED_CONFIG"
else
    echo "Invalid selection. Please choose a valid number."
    exit 1
fi
