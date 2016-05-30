FROM alpine:3.3

RUN apk add -U alpine-sdk

RUN adduser builder -D && \
    addgroup builder abuild && \
    sudo chgrp abuild /var/cache/distfiles && \
    sudo chmod g+w /var/cache/distfiles && \
    echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

ADD . /home/builder/pigeonhole

RUN su builder -c 'abuild-keygen -a -i -n' && \
    chown -R builder:abuild /home/builder/pigeonhole && \
    su builder -c 'cd /home/builder/pigeonhole && abuild -r'
