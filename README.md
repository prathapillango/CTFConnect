# **CTFConnect: Automate VPN Connection for OpenVPN Files**
                                              
CTFConnect is a user-friendly, automated script designed to simplify and streamline the process of establishing connections to OpenVPN configurations. Specifically crafted for Capture The Flag (CTF) competitions or scenarios requiring secure access to distinct network environments, this tool enables users to effortlessly connect to OpenVPN files with ease.

it is a automate script for connect to openvpn file like HackTheBox,TryHackme more vpn's 

#### Medium Writeup: https://medium.com/@prathapilango/ctfconnect-automate-vpn-connection-for-openvpn-files-vpn-tool-prathapilango-6109fa18d3aa

## Features

- Allows easy selection and connection to different VPN configurations for CTF challenges.
- Provides a text-based interface for selecting available configurations.
- Compatible with OpenVPN configurations.

## Requirements

- OpenVPN installed on your system.
- VPN configuration files stored in a specified directory.

## Installation

1. Clone the repository to your local machine:
 ```bash
  sudo git clone https://github.com/prathapillango/CTFConnect.git
```
1.Ensure OpenVPN is installed on your system.

2.Place your VPN configuration files in the specified directory.

## Usage:

1.Navigate to the CTFConnect directory:
 ```bash
cd CTFConnect
```
2.Copy the CTFConnect.sh to home
 ```bash
cp CTFConnect.sh ~
```
3. change directory to Home
```bash
cd ~
``` 
Run the script:
 ```bash
bash CTFConnect.sh
or
./CTFConnect.sh
```
3.Follow the on-screen instructions to select and connect to a VPN configuration.

## Configuration
Modify the CONFIG_DIR variable in the script (CTFConnect.sh) to specify the directory containing your VPN configuration files.
CONFIG_DIR="/path/to/your/vpn/configs"

## License

This project is licensed under the MIT License.

## Contributions
Contributions and suggestions are welcome! Feel free to fork the repository and create pull requests with improvements.

## Acknowledgements
ASCII art generated using manytools.org.

## Support
For any issues or questions, please open an issue on GitHub.


