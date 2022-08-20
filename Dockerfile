FROM i386/ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get -y update \
  && apt-get -y install curl lzma xz-utils

RUN  curl $(curl -s https://www.devolo.de/support/downloads/download/devolo-cockpit | grep -oP "http.*\.run" | head -1) | sed 's/apt-get/apt-get -y/g' > devolo-cockpit.run \
  && chmod +x ./devolo-cockpit.run \
  && ./devolo-cockpit.run

CMD  service devolonetsvc start \
  && /opt/devolo/dlancockpit/bin/dlancockpit

