default: install
    ansible-playbook master.yml

install:
    ansible-galaxy install -r requirements.yml
    pre-commit install

check: install
    ansible-playbook --check --skip-tags tailscale master.yml

unlock:
    -ssh -o UserKnownHostsFile=~/.ssh/known_hosts_luks root@virt-enp86s0.internal
