# Automatic webtiles server
This is an ansible playbook to quickly get a working webtiles server up and running.
**work in progress**

## Prerequisites
* ansible >= 2.0.2.0
* vagrant (optional)
* virtualbox (optional)

## Getting started
First install the required ansible roles.
```
ansible-galaxy install -r requirements.yml
```
Secondly, run vagrant up to try it out locally.
```
vagrant up
```
Now you have a fully working webtiles server.

## Provision custom servers
To provision your own servers edit the inventories/hosts file and set your own ip-addresses below [webtiles].
Edit group_vars/webtiles and set the correct ssh user as well as the private key for your servers.
Optionally you can set ssh user and keys on a per server basis in host_vars/*ip-address-here*.
More info [here](http://docs.ansible.com/ansible/intro_inventory.html#list-of-behavioral-inventory-parameters).

Next run the following commands.
```
ansible-galaxy install -r requirements.yml
ansible-playbook -i inventories/ crawl.yml
```

## Configuration
To configure the server correctly, change the values you want to modify in vars/webtiles.yml.

## Notes
* Edit /etc/ansible/ansible.cfg and both uncomment and set roles_path to $HOME/.ansible/roles



