#!/bin/bash

### Color
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'

### System Information
TANGGAL=$(date '+%Y-%m-%d')
TIMES="10"
NAMES=$(whoami)
IMP="wget -q -O"    
CHATID="1036440597"
LOCAL_DATE="/usr/bin/"
MYIP=$(wget -qO- ipinfo.io/ip)
CITY=$(curl -s ipinfo.io/city)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
KEY="2145515560:AAE9WqfxZzQC-FYF1VUprICGNomVfv6OdTU"
URL="https://api.telegram.org/bot$KEY/sendMessage"
REPO="https://raw.githubusercontent.com/NevermoreSSH/VVV/main/update/"
APT="apt-get -y install"
start=$(date +%s)

echo "0 1 * * * root xp" >> /etc/crontab
echo "*/2 * * * * root logclean" >> /etc/crontab
echo "0 3 * * * root /usr/bin/xp" >> /etc/crontab
echo "0 5 * * * root reboot" >> /etc/crontab
echo "0 8 * * * root systemctl restart squid" >> /etc/crontab
echo "0 11 * * * root systemctl restart squid" >> /etc/crontab
echo "0 14 * * * root systemctl restart squid" >> /etc/crontab
echo "0 17 * * * root systemctl restart squid" >> /etc/crontab
echo "0 20 * * * root systemctl restart squid" >> /etc/crontab
echo "0 23 * * * root systemctl restart squid" >> /etc/crontab
echo "0 2 * * * root systemctl restart squid" >> /etc/crontab

apt install htop -y 
apt install vnstat -y 
apt install resolvconf -y 

# download menu
cd /usr/sbin
wget -O add-ss "${REPO}add-ss"
wget -O add-ssh "${REPO}add-ssh"
wget -O add-tr "${REPO}add-tr"
wget -O add-vless "${REPO}add-vless"
wget -O add-ws "${REPO}add-ws"
wget -O del-ss "${REPO}del-ss"
wget -O del-ssh "${REPO}del-ssh"
wget -O del-tr "${REPO}del-tr"
wget -O del-vless "${REPO}del-vless"
wget -O del-ws "${REPO}del-ws"
wget -O menu "${REPO}menu"
wget -O trojan "${REPO}trojan"
wget -O user-tr "${REPO}user-tr"
wget -O user-vless "${REPO}user-vless"
wget -O user-ws "${REPO}user-ws"
wget -O vless "${REPO}vless"
wget -O vmess "${REPO}vmess"
wget -O xp "${REPO}xp"
wget -O ssh "${REPO}ssh"
wget -O member "${REPO}member"


chmod +x add-ss
chmod +x add-ssh
chmod +x add-tr
chmod +x add-vless
chmod +x add-ws
chmod +x del-ss
chmod +x del-ssh
chmod +x del-tr
chmod +x del-vless
chmod +x del-ws
chmod +x menu
chmod +x trojan
chmod +x user-tr
chmod +x user-vless
chmod +x user-ws
chmod +x vless
chmod +x vmess
chmod +x xp
chmod +x ssh
chmod +x member

cd
