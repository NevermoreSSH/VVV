#!/bin/bash
GIT_CMD="https://github.com/errorcode86/bbrplus/raw/main/Debian9/x86_64/"
startbbr() {
    if [[ $(echo 4.14.129-bbrplus | awk -F'.' '{print $1}') -ge "5" ]]; then
	echo "net.core.default_qdisc=cake" >> /etc/sysctl.conf
	echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_all = 0" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >>/etc/sysctl.conf
        echo "fs.file-max = 1000000" >>/etc/sysctl.conf
        echo "fs.inotify.max_user_instances = 8192" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_tw_reuse = 1" >>/etc/sysctl.conf
        echo "net.ipv4.ip_local_port_range = 1024 65535" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_rmem = 16384 262144 8388608" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_wmem = 32768 524288 16777216" >>/etc/sysctl.conf
        echo "net.core.somaxconn = 8192" >>/etc/sysctl.conf
        echo "net.core.rmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_default = 2097152" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_tw_buckets = 5000" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_syn_backlog = 10240" >>/etc/sysctl.conf
        echo "net.core.netdev_max_backlog = 10240" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_slow_start_after_idle = 0" >>/etc/sysctl.conf
        echo "net.ipv4.ip_forward = 1" >>/etc/sysctl.conf
    else
	echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
	echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_all = 0" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf
        echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >>/etc/sysctl.conf
        echo "fs.file-max = 1000000" >>/etc/sysctl.conf
        echo "fs.inotify.max_user_instances = 8192" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_tw_reuse = 1" >>/etc/sysctl.conf
        echo "net.ipv4.ip_local_port_range = 1024 65535" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_rmem = 16384 262144 8388608" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_wmem = 32768 524288 16777216" >>/etc/sysctl.conf
        echo "net.core.somaxconn = 8192" >>/etc/sysctl.conf
        echo "net.core.rmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_max = 16777216" >>/etc/sysctl.conf
        echo "net.core.wmem_default = 2097152" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_tw_buckets = 5000" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_max_syn_backlog = 10240" >>/etc/sysctl.conf
        echo "net.core.netdev_max_backlog = 10240" >>/etc/sysctl.conf
        echo "net.ipv4.tcp_slow_start_after_idle = 0" >>/etc/sysctl.conf
        echo "net.ipv4.ip_forward = 1" >>/etc/sysctl.conf
        echo "net.netfilter.nf_conntrack_max = 524288" >>/etc/sysctl.conf
    fi
}
installbbrplus(){
		cd /tmp
		wget -N --no-check-certificate https://github.com/NevermoreSSH/BBRplus/releases/download/bbr5.15/Debian-Ubuntu_Required_linux-image-5.15.96-bbrplus_5.15.96-bbrplus-1_amd64.deb \
        -O bbrplus_5.15.86_amd64.deb  >/dev/null 2>&1
		wget -N --no-check-certificate https://github.com/NevermoreSSH/BBRplus/releases/download/bbr5.15/Debian-Ubuntu_Optional_linux-headers-5.15.96-bbrplus_5.15.96-bbrplus-1_amd64.deb \
        -O bbrplus_5.15.86-headers_amd64.deb >/dev/null 2>&1
		dpkg -i bbrplus_5.15.86_amd64.deb
		dpkg -i bbrplus_5.15.86-headers_amd64.deb
}
installbbrplus
startbbr