# ansible-ubuntu

[![Build Status][travis-image]][travis-url]

## Test with Docker

```
docker build -t ansible:test .
```

```
docker run --rm -it ansible bash
```

## Roles

Before launching roles, go into `playbooks` folder:

```
cd playbooks/
```

### Tools

Install curl, vim, wget

```
ansible-playbook -v tools.yml -K
```

### Git

Install Git

```
ansible-playbook -v git.yml -K
```

Install Git and configure with your information
```
ansible-playbook -v git.yml -K -e 'username="Firstname Lastname"' -e email=yourmail
```

### OpenJDK 8

Install Java:

```
ansible-playbook -v openjdk8.yml -K
```

### NodeJS

Install NodeJS

```
ansible-playbook -v node.yml -K
```


Install a specific version of NodeJS

```
ansible-playbook -v node.yml -K -e version=8.10.0
```

### zsh, oh-my-zsh, fonts-powerline and spaceship-prompt

Install zsh, on-my-zsh, fonts-powerline and spaceship-prompt

```
ansible-playbook -v zsh.yml -K
```

### tilix

Install tilix

```
ansible-playbook -v tilix.yml -K
```

### Docker Compose

Install Docker Compose

```
ansible-playbook -v dockercompose.yml -K
```

[travis-image]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu.svg?branch=master
[travis-url]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu
