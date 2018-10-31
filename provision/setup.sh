#!/usr/bin/env bash

export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=1

if ! [ `which ansible` ]; then
  if [ -f /etc/redhat-release ]; then
    sudo yum install -y epel-release yum-utils
    sudo yum-config-manager --enable epel
    sudo yum install -y ansible
  fi

  if [ -f /etc/lsb-release ]; then
    sudo apt-get update -y
    sudo apt-get install ansible -y
  fi
fi

ansible-playbook -i "localhost," -c local /vagrant/provision/setup-vagrant.yml

