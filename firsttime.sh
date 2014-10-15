#!/bin/bash
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-vbguest
vagrant up --provision
vagrant vbguest --do install --auto-reboot || true
vagrant halt
vagrant up

