# Laptop

I strive to keep all configuration for my laptop as code.

This repository contains Ansible playbooks for configuring my Thinkpad X1 Carbon Gen9, which also [configure my dotfiles as a bare git repository.](dotfiles.md)

### Fresh install

After installing a OS. I run the `main.yml` playbook, which will run all playbooks in `playbooks/` sequentially.

>Some playbooks requires the `community.general` galaxy collection, install by running `ansible-galaxy collection install community.general`

### Post install

After running the `main.yml` playbook on a new machine. I add more functionality to the playbooks in `playbooks/` and re-run the individual playbook, instead of configuring things manually on my machine.

When doing something experimental, I create a temporary ansible playbook and play around with it, until the changes gets merged into one of the checked in playbooks.

![piske-usagi](https://user-images.githubusercontent.com/29174850/214052954-a4a05a20-0f48-4d13-9494-1b8f3ad414e4.gif)
