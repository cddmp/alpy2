FROM python:2-alpine

RUN apk upgrade
RUN apk --update add --no-cache bash gcc python2 py-pip rust cargo openssl-dev libffi-dev vim proxychains-ng tmux nmap openssh sshpass
RUN pip install impacket pysmb

WORKDIR /root
ENTRYPOINT ["/bin/bash"]
