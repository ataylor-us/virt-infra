# virt-infra

Templated from [debian-ubuntu-base-infra](https://github.com/ataylor-us/debian-ubuntu-base-infra).

This box is the main hypervisor for my homelab, currently it runs Ubuntu 26 with opentofu/libvirt [provisioning the VMs](https://github.com/ataylor-us/virt-provision).

```bash
ssh-copy-id `#ip`
ansible-playbook master.yml -e tailscale_authkey=`#key` -e ansible_host=`#ip`
```

Firewall rules (& drift management) are handled externally by [OpenVox](https://voxpupuli.org/openvox/).

## Backups

Backups are automated using [Borg](https://www.borgbackup.org/) + the incredible [Borgbase](https://www.borgbase.com/). Local (NFS) backups are also added for some repos via my UNAS2, but because adding the export is a manual step, this part is only partially automated.

## Versions

[Renovate](https://github.com/renovatebot/renovate) is used to make PRs for containers, Ansible Galaxy collections, and AUR packages.  Other updates are handled manually by the package manager.

