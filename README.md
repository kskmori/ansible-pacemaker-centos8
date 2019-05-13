# Sample Ansible Playbook for RHEL8.0 High Availability cluster

NOTE: this repository is just for my development and might be removed in the future.

## Reference:
* [Configuring and managing high availability clusters](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_high_availability_clusters/index)

## Prerequisite

* 1. download both the RHEL8 base ISO image and the HA addon ISO image
* 2. set the RHEL8 base ISO image as a DVD media on the target hosts
* 3. copy and rename the HA addon ISO image into ./roles/repo-setup/files/rhel-8.0-ha-x86_64-dvd.iso


## Setup cluster

* 1. create the inventory file 'hosts'. see 'hosts.sample'

* 2. setup repository
>  \# ansible-playbook 00-repo-setup.yml

* 3. setup cluster
>  \# ansible-playbook 10-pacemaker-install.yml

* 4. start cluster (run on the target host)
>  \# pcs cluster start --all




