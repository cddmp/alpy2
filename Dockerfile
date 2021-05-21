FROM python:2-alpine

RUN apk upgrade
RUN apk --update add --no-cache bash gcc python2 py-pip rust cargo openssl-dev libffi-dev vim
RUN pip install impacket

WORKDIR /root
ENTRYPOINT ["/bin/bash"]
