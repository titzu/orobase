FROM ubuntu:bionic

COPY ["setup.sh", "configure.sh", "/opt/bin/"]
COPY ["sources.list", "/etc/apt/sources.list"]

# Set the locale
#RUN apt-get clean && apt-get update && apt-get install -y locales
#RUN locale-gen en_US.UTF-8

RUN /bin/bash /opt/bin/setup.sh
RUN /bin/bash /opt/bin/configure.sh

COPY ["bin/*", "/usr/local/bin/"]

RUN chmod +x /usr/local/bin/*
