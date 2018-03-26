# ansible-ubuntu

## Test with Docker

```
docker build -t ansible:test .
```

```
docker run --rm -it ansible bash
```


## Roles

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
