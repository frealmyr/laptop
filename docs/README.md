# Ansible

This repository contains Ansible playbooks for configuring all of my machines, by default it points to my current configuration for my Thinkpad X1 Carbon Gen9.

## Fresh install

When i provision a fresh OS install, i run the `main.yml` which will run all playbooks in sequence. Some playbooks requires the galaxy.community plugin, and some requires a logged in Bitwarden session for pulling secrets, such as GPG keys etc.

To install the prerequisites run the `install-requirements.sh` script:
```bash
wget -qO- https://raw.githubusercontent.com/frealmyr/dotfiles/main/install-requirements.sh | bash
```

Afterwards you can run the following to login bitwarden, and running ansible without cloning this repository:
```bash
bw login --apikey
export BW_SESSION=$(bw unlock --raw)
ansible-pull -U https://github.com/frealmyr/ansible.git main.yml
```

# Post install

After running the `main.yml` playbook on a new machine. I add more functionality to the playbooks and re-run them individually, rather than doing things manually on my machine. With the goal of keeping everything checked in as IaC.

When doing something experimental, i often create a temporary ansible playbook and play around with that until the changes gets merged into one of the checked in playbooks.
