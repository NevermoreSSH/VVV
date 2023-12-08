<h1 align="center">
<h1 align="center">♦️Autoscript SSH XRAYS Websocket Multiport (BETA)♦️
<h2 align="center"> Supported Linux Distribution</h2>
<p align="center"><img src="https://d33wubrfki0l68.cloudfront.net/5911c43be3b1da526ed609e9c55783d9d0f6b066/9858b/assets/img/debian-ubuntu-hover.png"width="400"></p>
<p align="center"><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=purple"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=purple">  <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2018&message=Lts&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2020&message=Lts&color=red">
</p>
  
### INSTALL SCRIPT

Update Debian 9/10/11
<pre><code>apt update -y && apt upgrade -y && apt dist-upgrade -y && reboot</code></pre>
Update Ubuntu 18/20
<pre><code>apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && sleep 2 && reboot</code></pre>
Script Setup ( ipv4 only )
<pre><code>apt install -y wget screen && wget -q https://raw.githubusercontent.com/NevermoreSSH/VVV/main/main.sh && chmod +x main.sh && screen -S install ./main.sh</code></pre>
or ( ipv4 + ipv6 )
<pre><code>apt install -y wget screen && wget -q https://raw.githubusercontent.com/NevermoreSSH/VVV/main/setup2.sh && chmod +x setup2.sh && screen -S install ./setup2.sh</code></pre>


Update Menu
<pre><code>wget -q -O /usr/sbin/updatemenu "https://raw.githubusercontent.com/NevermoreSSH/VVV/main/update/updatemenu.sh" && chmod +x /usr/sbin/updatemenu && updatemenu</code></pre>


If problem "ERROR: The certificate of 'raw.githubusercontent.com' is not trusted"


The solution simple install: `apt-get install ca-certificates`

### TESTED ON OS 
- DEBIAN 10 & UBUNTU 20.04

### ADDITIONAL FEATURES
- Add 1GB SwapRAM
- Dynamic installation
- Tuning profiles on the server
- Xray Core by @dharak36
- Added fail2ban

### PORT INFO
```
>>> Service & Port
- Open SSH                : 443, 80, 22         
- DNS (SLOWDNS)           : 443, 80, 53          
- Dropbear                : 443, 109, 80        
- Dropbear Websocket      : 443, 109
- UDP Custom              : 1-65535          
- SSH Websocket SSL       : 443                  
- SSH Websocket           : 80                 
- OpenVPN SSL             : 443                   
- OpenVPN Websocket SSL   : 443                  
- OpenVPN TCP             : 443, 1194            
- OpenVPN UDP             : 2200              
- Nginx Webserver         : 443, 80, 81          
- Haproxy Loadbalancer    : 443, 80              
- DNS Server              : 443, 53               
- DNS Client              : 443, 88               
- XRAY DNS (SLOWDNS)      : 443, 80, 53        
- XRAY Vmess TLS          : 443                 
- XRAY Vmess gRPC         : 443                 
- XRAY Vmess None TLS     : 80                   
- XRAY Vless TLS          : 443                 
- XRAY Vless gRPC         : 443                  
- XRAY Vless None TLS     : 80                    
- Trojan gRPC             : 443                
- Trojan WS               : 443                  
- Shadowsocks WS          : 443                  
- Shadowsocks gRPC        : 443 
```

### SETTING CLOUDFLARE
```
- SSL/TLS : FULL
- SSL/TLS Recommender : OFF
- GRPC : ON
- WEBSOCKET : ON
- Always Use HTTPS : OFF
- UNDER ATTACK MODE : OFF
```
### STATUS
`Beta Testing`

### BUG
* Squid problem, disable permanent
* GRPC not working

### Credits
- [Dharak36](https://github.com/dharak36/Xray-core)
