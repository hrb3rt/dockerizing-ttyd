FROM kalilinux/kali

ENV TTY_VER 1.6.1

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/tsl0922/ttyd/releases/download/${TTY_VER}/ttyd_linux.x86_64 -o ttyd_linux && \
    chmod +x ttyd_linux && \
    cp ttyd_linux /usr/local/bin/ && \
    apt-get purge --auto-remove -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists*

COPY run_ttyd.sh /run_ttyd.sh

RUN chmod 744 /run_ttyd.sh

CMD ["/bin/bash","/run_ttyd.sh"]
