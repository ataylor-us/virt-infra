# virt-infra

Templated from [debian-ubuntu-base-infra](https://github.com/ataylor-us/debian-ubuntu-base-infra).

This box is the main hypervisor for my homelab, currently it runs Ubuntu 26 with opentofu/libvirt [provisioning the VMs](https://github.com/ataylor-us/virt-provision).

```bash
ssh-copy-id `#ip`
ansible-playbook master.yml -e tailscale_authkey=`#key` -e ansible_host=`#ip`
```

Firewall rules (& drift management) are handled externally by [OpenVox](https://voxpupuli.org/openvox/).
