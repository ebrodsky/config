#!/bin/bash
# Check VPN without sudo by looking at network interfaces

# Check if WireGuard interface exists and has an IP
if ip addr show client 2>/dev/null | grep -q "inet "; then
    # Get basic info without sudo
    INTERFACE_INFO=$(ip addr show client 2>/dev/null | grep "inet " | head -1 | awk '{print $2}')
    echo "{\"text\": \"VPN: Connected\", \"tooltip\": \"Interface: client\\nIP: $INTERFACE_INFO\", \"class\": \"connected\"}"
else
    echo '{"text": "VPN: Not connected", "tooltip": "Not connected to a VPN"}'
fi
