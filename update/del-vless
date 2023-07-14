#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	elliez
# //	Dscription: Xray Menu Management
# //	email: elliez667@gmail.com
# //  telegram: https://t.me/todfix667
# //====================================================
# // font color configuration | NEVERMORE SSH AUTOSCRIPT
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#& " "/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
    echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
    echo -e "\e[42m             Delete Vless Account        \E[0m"
    echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
    echo ""
    echo "You have no existing clients!"
    echo ""
    echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
fi

clear
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
echo -e "\e[42m             Delete Vless Account        \E[0m"
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
echo "     NO    User    Expired  "
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
grep -E "^#& " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
    if [[ ${CLIENT_NUMBER} == '1' ]]; then
        read -rp "Select one client [1]: " CLIENT_NUMBER
    else
        read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
    fi
done
user=$(grep -E "^#& " "/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^#& " "/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^#& $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^### $user $exp/d" /etc/vless/.vless.db
systemctl restart xray
clear
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
echo " Vless Account Deleted Successfully"
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
echo " Client Name : $user"
echo " Expired On  : $exp"
echo -e "\033[1;93m─────────────────────────────────────────\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"

menu
