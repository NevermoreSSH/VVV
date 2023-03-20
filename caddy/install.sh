#!/bin/bash
REPO="https://raw.githubusercontent.com/NevermoreSSH/VVV/main/"

curl -1sLf 'https://raw.githubusercontent.com/NevermoreSSH/VVV/main/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg --yes  >/dev/null 2>&1
curl -1sLf 'https://raw.githubusercontent.com/NevermoreSSH/VVV/main/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list  >/dev/null 2>&1
sudo apt install caddy

### Tambah konfigurasi Caddy
function caddy(){
    mkdir -p /etc/caddy
    wget -O /etc/caddy/vmess "${REPO}caddy/vmess" >/dev/null 2>&1
    wget -O /etc/caddy/vless "${REPO}caddy/vless" >/dev/null 2>&1
    wget -O /etc/caddy/trojan "${REPO}caddy/trojan" >/dev/null 2>&1
    cat >/etc/caddy/Caddyfile <<-EOF
$domain:443
{
    tls taibabi17@gmail.com
    encode gzip

    handle_path /vless {
        reverse_proxy localhost:10001

    }

    import vmess
    handle_path /vmess {
        reverse_proxy localhost:10002
    }

    handle_path /trojan-ws {
        reverse_proxy localhost:10003
    }

    handle_path /ss-ws {
        reverse_proxy localhost:10004
    }

    handle {
        reverse_proxy https://$domain {
            trusted_proxies 0.0.0.0/0
            header_up Host {upstream_hostport}
        }
    }
}
EOF
}

caddy
systemctl stop caddy
systemctl enable --now caddy