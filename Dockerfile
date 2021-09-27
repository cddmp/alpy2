FROM python:2-alpine

RUN apk upgrade
RUN apk --update add --no-cache bash gcc python2 py-pip rust cargo openssl-dev libffi-dev vim proxychains-ng tmux nmap nmap-scripts openssh sshpass
RUN pip install impacket pysmb
RUN sed -i 's/^socks4\s*127.0.0.1\s*9050$/socks4 127.0.0.1 1081/' /etc/proxychains/proxychains.conf

WORKDIR /root
ENTRYPOINT ["/bin/bash"]
