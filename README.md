# ansible-ubuntu

[![Build Status][travis-image]][travis-url]

## Test with Docker


Build the Docker image

```
docker build -t ansible:test .
```

Start the container with the code inside:

```
docker run --rm -it ansible:test bash
```

Start the container, with volume, so you can change the code directly:

```
docker run --rm -it -v "$PWD":/home/jhipster/app/ ansible:test bash
```

## Roles

### Tools

Install curl, vim, wget

```
ansible-playbook -v playbooks/tools.yml -K
```

### Git

Install Git

```
ansible-playbook -v playbooks/git.yml -K
```

Install Git and configure with your information
```
ansible-playbook -v playbooks/git.yml -K -e 'username="Firstname Lastname"' -e email=yourmail
```

### zsh, oh-my-zsh, fonts-powerline and spaceship-prompt

Install zsh, [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), fonts-powerline and [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)

```
ansible-playbook -v playbooks/zsh.yml -K
```

### OpenJDK 8

Install Java:

```
ansible-playbook -v playbooks/openjdk8.yml -K
```

### NodeJS

Install [NodeJS](https://nodejs.org/en/)

```
ansible-playbook -v playbooks/node.yml -K
```


Install a specific version of NodeJS

```
ansible-playbook -v playbooks/node.yml -K -e NODE_VERSION=8.10.0
```

### yarn

Install [yarn](https://yarnpkg.com/lang/en/)

```
ansible-playbook -v playbooks/yarn.yml -K
```

### tilix

Install [tilix](https://github.com/gnunn1/tilix)

```
ansible-playbook -v playbooks/tilix.yml -K
```

### Docker Compose

Install [Docker Compose](https://github.com/docker/compose)

```
ansible-playbook -v playbooks/dockercompose.yml -K
```

[travis-image]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu.svg?branch=master
[travis-url]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu
