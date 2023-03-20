### PERHATIAN
- Terima kasih untuk tidak menjual maupun mengenkripsi skrip ini. Saya mendapatkan secara gratis, jadi saya ataupun kalian harus berbagi secara gratis.
- Script ini **tidak direkomendasikan untuk bermain game**.
- Status servis terkadang miss informasi. Dimana pada status dead tetapi jika dilihat by servis statusnya sudah aktif. Jadi bisa diabaikan
- Jika mendapatkan error pada status servis dalam jangka panjang, bisa restart servis yang dead.

### INSTALL SCRIPT
<pre><code>apt install -y wget screen && wget -q https://raw.githubusercontent.com/NevermoreSSH/VVV/main/main.sh && chmod +x main.sh && screen -S install ./main.sh</code></pre>


### TESTED ON OS 
- UBUNTU 20.04
- DEBIAN 10, 11

### ADDITIONAL FEATURES
- Add 1GB Swap
- Dynamic installation
- Tuning profiles on the server
- Xray Core by @dharak36
- Added file2ban

### PORT INFO
```
- TROJAN WS 443
- TROJAN GRPC 443
- SHADOWSOCKS WS 443
- SHADOWSOCKS GRPC 443
- VLESS WS 443
- VLESS GRPC 443
- VLESS NONTLS 80
- VMESS WS 443
- VMESS GRPC 443
- VMESS NONTLS 80
- SSH WS / TLS 443
- SSH NON TLS 8880
- OVPN SSL/TCP 443/1194
- SLOWDNS 5300
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
- Bug delete config (need manual delete)
- Bug Squid (already OFF)

### Credits
- [Dharak36](https://github.com/dharak36/Xray-core)
