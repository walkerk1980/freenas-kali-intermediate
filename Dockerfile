FROM kalilinux/kali-linux-docker
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --assume-yes -y --yes -f dist-upgrade && apt-get install -y openssh-server dnsutils nmap nano tcpdump screen tmux tshark
RUN /bin/sed -i s/"PermitRootLogin prohibit-password"/"PermitRootLogin yes"/ /etc/ssh/sshd_config
RUN /bin/systemctl enable ssh
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump && hash –r
RUN apt-clean
