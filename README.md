# Ansible playground
Repository for learning ansible 

## Requirements
* poetry
* docker
* docker-compose

## Installation
```shell
poetry install
docker-compose up -d
```

## Example run
```shell
ansible-playbook ./ansible/first_playbook.yaml
```
if you wannt to use another inventory, change path in ansible.cfg or use paramters `-i`
```shell
ansible-playbook -i ./ansible/inventories/local.yaml ./ansible/first_playbook.yaml
```




## References
Dockerfile is an upgraded version of [William-Yeh](https://github.com/William-Yeh/docker-ansible/blob/master/1.9-ubuntu14.04/Dockerfile)

### TODO:
* https://faun.pub/launch-and-configure-docker-container-using-ansible-playbook-95607550623f
