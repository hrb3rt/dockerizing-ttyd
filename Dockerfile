FROM kalilinux/kali

ENV TTY_VER 1.6.1
ENV USER kali
ENV PASSWORD kali

RUN apt-get -y update && \
    apt-get install -y curl sudo && \
    curl -sLk https://github.com/tsl0922/ttyd/releases/download/${TTY_VER}/ttyd_linux.x86_64 -o ttyd_linux && \
    chmod +x ttyd_linux && \
    cp ttyd_linux /usr/local/bin/

RUN useradd -m ${USER} && echo "${USER}:${PASSWORD}" | chpasswd && adduser ${USER} sudo

RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	openvpn \
	-y --show-progress 

COPY run_ttyd.sh /run_ttyd.sh

RUN chmod 744 /run_ttyd.sh
USER ${USER}
CMD ["/bin/bash","/run_ttyd.sh"]
