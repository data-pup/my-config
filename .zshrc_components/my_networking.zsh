#!/bin/zsh

# This set of aliases and functions is used for networking settings, etc.

# Call iftop with as superuser by default (Personal machine only!)
alias iftop="sudo /usr/local/sbin/iftop"

# List open connections using the lsof command
alias connections="sudo lsof -n -i -P -c 15"

# Don't send continuous pings.
alias ping="ping -c 5"

# Brief alias to networksetup
alias nsetup="networksetup"

# This pair of functions enters and exits promiscuous mode,
# by changing the permissions on the kernel packet filters.
# NOTE: Do NOT use promiscuous mode on other's networks without
# first obtaining permission. Don't use this without a good reason.
enter_promiscuous () {
    sudo chmod 777 /dev/bpf*
}
exit_promiscuous () {
    sudo chmod 600 /dev/bpf*
}

# Arp-scan command, scan localnet verbosely
alias local-arp-scan='arp-scan --interface=en0 --localnet --verbose'

# Use an alias for the Apple airport utility
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Power cycle wifi in case of connectivity problems
alias airportcycle='networksetup -setairportpower en0 off; sleep 1; networksetup -setairportpower en0 on'

# Turn airport on and off from the command line
alias wifion='networksetup -setairportpower en0 on'
alias wifioff='networksetup -setairportpower en0 off'
alias wifienable='networksetup -setnetworkserviceenabled Wi-Fi on'
alias wifidisable='networksetup -setnetworkserviceenabled Wi-Fi off'

# Enable and disable my network services
# NOTE: You can list the network services using -listallnetworkservices
# DEBUG: This commands will require entering passwd for each command. Fix?
enable_network_services() {
  networksetup -setnetworkserviceenabled Wi-Fi on
  networksetup -setnetworkserviceenabled Bluetooth\ PAN on
  networksetup -setnetworkserviceenabled Thunderbolt\ Bridge on
  networksetup -setnetworkserviceenabled Thunderbolt\ FireWire on
}

disable_network_services() {
  networksetup -setnetworkserviceenabled Wi-Fi off
  networksetup -setnetworkserviceenabled Bluetooth\ PAN off
  networksetup -setnetworkserviceenabled Thunderbolt\ Bridge off
  networksetup -setnetworkserviceenabled Thunderbolt\ FireWire off
}

# # # # # My Network Info Function # # # # #
# This is a script to print detailed information about each hardware port on
# my Mac computer. This uses the networksetup utility to display information.
my_networking_info() {
    echo Printing all network services...
    echo ------------------------------------------------------------
    networksetup -listallnetworkservices
    echo ------------------------------------------------------------
    ports=('Thunderbolt FireWire' 'Wi-Fi' 'Bluetooth PAN' 'Thunderbolt Bridge')
    echo
    echo Printing information about network services...
    echo
    for port in $ports; do
        echo Information about $port:;
        echo ------------------------------------------------------------
        networksetup -getinfo $port
        echo ------------------------------------------------------------
        echo
    done
    echo Printing information about current wireless status...
    echo ------------------------------------------------------------
    /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --getinfo
    echo ------------------------------------------------------------
}
