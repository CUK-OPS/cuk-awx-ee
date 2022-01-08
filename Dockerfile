FROM ubuntu:14.04
RUN \
    apt-get -y update && \
    #apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git curl unzip man wget telnet
ADD folder/.bashrc /root/.bashrc
WORKDIR /root
ENV HOME /root
CMD ["bash"]
