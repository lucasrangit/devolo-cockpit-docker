FROM i386/ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get -y update \
  && apt-get -y install curl lzma xz-utils

RUN  curl https://www.devolo.global/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-v5-1-6-2-linux.run -o devolo-cockpit.run \
  && chmod +x ./devolo-cockpit.run \
  && ./devolo-cockpit.run

CMD  service devolonetsvc start \
  && /opt/devolo/dlancockpit/bin/dlancockpit

