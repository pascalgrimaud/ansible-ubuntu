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

Before launching roles, go into `playbooks` folder.

Install curl, vim, wget

```
ansible-playbook -v tools.yml -K
```

Install Git and Config

```
ansible-playbook -v git.yml -K -e 'username="Firstname Lastname"' -e email=yourmail
```

Install Java:

```
ansible-playbook -v openjdk8.yml -K
```

Install NodeJS

```
ansible-playbook -v node.yml -K -e version=8.10.0
```

Install zsh with spaceship

```
ansible-playbook -v zsh.yml -K
```

[travis-image]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu.svg?branch=master
[travis-url]: https://travis-ci.org/pascalgrimaud/ansible-ubuntu
