#!/bin/bash

if ! command -v ansible &> /dev/null
then
    echo "warning - ansible could not be found"
    echo "dnf - install ansible package.."
    sudo dnf install -y ansible
fi

echo "ansible - install ansible collection community.general.."
ansible-galaxy collection install community.general

echo "ansible - running main playbook"
ansible-playbook main.yml