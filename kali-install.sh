
#!/bin/bash

# sleep until instance is ready
#until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
 #   sleep 5
#done

# install nginx
sudo apt update

sudo apt full-upgrade -y 

sleep 5

DEBIAN_FRONTEND=noninteractive sudo apt install -y kali-linux-default

sleep 10

DEBIAN_FRONTEND=readline sudo apt install -y kali-desktop-xfce xorg xrdp

sleep 5

sudo systemctl enable xrdp --now

sleep 5

echo "kali:kali" | sudo chpasswd 

sudo apt update

# allow access on ports 80 and 443
# ufw enable 
# ufw allow 'Apache Full'

# make sure nginx is started
