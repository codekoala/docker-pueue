FROM busybox:latest

ARG version=v1.0.0-rc.2

ADD https://github.com/Nukesor/pueue/releases/download/${version}/pueue-linux-x86_64 /usr/local/bin/pueue
ADD https://github.com/Nukesor/pueue/releases/download/${version}/pueued-linux-x86_64 /usr/local/bin/pueued

RUN chmod a+x /usr/local/bin/pueue*

CMD /usr/local/bin/pueued
