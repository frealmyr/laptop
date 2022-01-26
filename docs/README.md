### Provisioning Regolith Linux

```bash
wget -qO- https://raw.githubusercontent.com/frealmyr/dotfiles/main/install-requirements.sh | bash
bw login --apikey
export BW_SESSION=$(bw unlock --raw)
ansible-pull -U https://github.com/frealmyr/ansible.git main.yml
```

#### Ansible will do the following

- Install packages
	- apt update & full-upgrade
	- install apt packages
	- install snap packages
	- install deb packages
	- install binaries to `/usr/local/bin`
- Install asdf
	- add entry to bashrc (for scripts)
	- add plugins
	- install plugins
	- set global versions
- Setup GPG
	- import keys from bitwarden vault
- Install docker
	- setup pass with GPG
	- use pass for credsStore
- Apply eyecandy
	- set regolith theme to dracula
- Download config files
	- set zsh as default shell for user
	- setup bare git repo in home folder
	- setup trackpoint/touchpad overrides
- Configure firefox
	- create work and home profiles
	- disable open last profile, gain prompt to choose profile when opening
	- copy user.js (about:settings) and userChrome.css to generated profiles
- Configure firewall
