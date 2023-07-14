#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	elliez
# //	Dscription: Xray Menu Management
# //	email: elliez667@gmail.com
# //  telegram: https://t.me/todfix667
# //====================================================
# // font color configuration | NEVERMORE SSH AUTOSCRIPT
clear
grenbo="\e[92;1m"
NC='\033[0m'
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER VLESS              $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCreating a Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mDelete Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mRenew Vless Account${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mCheck Vless Login Account${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mCheck Vless Config Account${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 4 ] : " menu
case $menu in
1)
    add-vless
    ;;
2)
    del-vless
    ;;
3)
    renew-vless
    ;;
4)
    cek-vless
    ;;
5)
    user-vless
    ;;
*)
    menu
    ;;
esac
