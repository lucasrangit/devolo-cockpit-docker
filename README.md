# devolo-cockpit-docker

Devlolo Cockpit 5.1.62 requires Ubuntu 18.04 32-bit and has dependencies on AdobeAir. To make it easier to run on newer 64-bit Ubuntu machines here's a Docker container you can use. Tested on Ubuntu 20.04 64-bit.

Check https://www.devolo.global/support/downloads/download/devolo-cockpit for the latest version.

1. `docker build -t devolo-cockpit .`
1. `docker run --rm -it --platform linux/i386 --net=host --privileged -e USER_HOME=$HOME -e USER_UID=$(id -u) -e USER_GID=$(id -g) -v $HOME:/user:rw -v /var/lib/avpromanager:/root:rw -v $XAUTHORITY:/user/.Xauthority -e XAUTHORITY=/user/.Xauthority -e DISPLAY=$DISPLAY devolo-cockpit`

