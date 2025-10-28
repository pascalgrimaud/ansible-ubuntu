FROM ubuntu:noble
RUN \
  # configure the "chips" user
  groupadd chips && \
  useradd chips -s /bin/bash -m -g chips -G sudo && \
  echo 'chips:chips' |chpasswd && \
  mkdir /home/chips/app && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository -y ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y sudo ansible && \
  # cleanup
  apt-get clean && \
  rm -rf \
    /home/chips/.cache/ \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* && \
  # update
  apt update
COPY . /home/chips/app
RUN chown -R chips:chips /home/chips/
WORKDIR /home/chips/app/
USER chips
CMD ["tail", "-f", "/home/chips/app/README.md"]