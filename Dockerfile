FROM ubuntu:jammy
RUN \
  # configure the "jhipster" user
  groupadd jhipster && \
  useradd jhipster -s /bin/bash -m -g jhipster -G sudo && \
  echo 'jhipster:jhipster' |chpasswd && \
  mkdir /home/jhipster/app && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository -y ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y sudo ansible && \
  # cleanup
  apt-get clean && \
  rm -rf \
    /home/jhipster/.cache/ \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* && \
  # update
  apt update
COPY . /home/jhipster/app
RUN chown -R jhipster:jhipster /home/jhipster/
WORKDIR /home/jhipster/app/
USER jhipster
CMD ["tail", "-f", "/home/jhipster/app/README.md"]