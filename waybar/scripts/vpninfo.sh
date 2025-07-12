#!/bin/bash
# Network module with VPN status coloring

# Check if VPN (WireGuard interface) exists and has an IP
if ip addr show client 2>/dev/null | grep -q "inet "; then
    # VPN is connected - get basic network info and use green class
    if iwgetid -r >/dev/null 2>&1; then
        SSID=$(iwgetid -r | tr -d '\n\r')
        SIGNAL=$(awk 'NR==3 {if($3 >= -50) print "100"; else if($3 <= -100) print "0"; else print int(($3 + 100) * 2)}' /proc/net/wireless 2>/dev/null)
        NETWORK_TEXT="$SSID (${SIGNAL}%) ᯤ"
    else
        NETWORK_TEXT="Network Connected"
    fi
    INTERFACE_INFO=$(ip addr show client 2>/dev/null | grep "inet " | head -1 | awk '{print $2}')
    echo '{"text": "'"$NETWORK_TEXT"'", "tooltip": "VPN Connected\nInterface: client\nIP: '"$INTERFACE_INFO"'", "class": "connected"}'
else
    # VPN is not connected - use default styling
    if iwgetid -r >/dev/null 2>&1; then
        SSID=$(iwgetid -r | tr -d '\n\r')
        SIGNAL=$(awk 'NR==3 {if($3 >= -50) print "100"; else if($3 <= -100) print "0"; else print int(($3 + 100) * 2)}' /proc/net/wireless 2>/dev/null)
        NETWORK_TEXT="$SSID (${SIGNAL}%) ᯤ"
    else
        NETWORK_TEXT="Network Connected"
    fi
    echo '{"text": "'"$NETWORK_TEXT"'", "tooltip": "Network: '"$NETWORK_TEXT"'\nVPN: Not connected"}'
fi
