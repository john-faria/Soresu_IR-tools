# Install iptables from package
sudo dpkg -i iptables_1.6.1-2ubuntu2_amd64.deb
echo "iptables installed from local .deb package"

# Set iptables rules
sudo iptables -F
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT DROP
sudo iptables -P FORWARD DROP
# Allow traffic on loop-back
sudo iptables -A INPUT -i lo
sudo iptables -A OUTPUT -o lo
# Allow 224.0.0.251
sudo iptables -A INPUT -p tcp -s 224.0.0.251 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -d 224.0.0.251 -j ACCEPT
echo "iptables rules set to block all but 224.0.0.251"
sudo iptables -S

# Update ClamAV signatures and re-scan
sudo apt-get install clamav
echo "ClamAV installed"
echo "Beginning scan..."
sudo clamscan -r --detect-pua=yes --infected --alert-macros=yes /

# Allow Github

# Add unofficial signatures
